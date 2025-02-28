library(caret) #pre-defined 
library(rpart) #pre-defined
library(readr) #pre-defined
set.seed(123)  #pre-defined

suv_data <- read_csv("https://storage.googleapis.com/dqlab-dataset/suv_data.csv") #pre-defined

#split data to training & testing set
trainIndex <- createDataPartition(suv_data$Purchased, p = 0.8, list = FALSE)
training_set <- suv_data[trainIndex, ]
testing_set <- suv_data[-trainIndex,]

#build model with decision tree
model_dt <- rpart(Purchased ~ ., data = training_set, method="class")
predictions_dt <- predict(model_dt, newdata = testing_set, type = "class")

#evaluate performance with new data/ testing_set
testing_purchased <- factor(testing_set$Purchased) #pre-defined 

#show the evaluation result 
evaluation_result <- confusionMatrix(predictions_dt, testing_purchased)
evaluation_result

# Tugas
# Dataset https://storage.googleapis.com/dqlab-dataset/suv_data.csv berikut menyajikan informasi terkait profil customer yang pernah membeli mobil keluaran terbaru.

# Dataset ini perlu dibagi ke dalam training set dan testing set, dan buatlah machine learning model dengan menggunakan Decision tree untuk memprediksi customer yang tertarik membeli mobil keluaran terbaru, serta evaluasi performance dari kedua model tersebut.