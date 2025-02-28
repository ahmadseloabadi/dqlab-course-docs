library(readr)
library(caret)
set.seed(123)
iris <- read_csv("https://storage.googleapis.com/dqlab-dataset/iris.csv")

trainIndex <- createDataPartition(iris$Species, p = 0.8, list = FALSE)
training_set <-  iris[trainIndex, ]
testing_set <- iris[-trainIndex, ]

dim(training_set)
dim(testing_set)

# Tugas
# Dalam membuat model machine learning, dataset perlu dibagi ke dalam Training dan Testing set. Salah satu library yang digunakan adalah caret. Dengan menggunakan Iris dataset yang sudah di-load dan library caret, buatlah syntax untuk membagi dataset tersebut ke dalam training set (80%) dan testing dataset (20%)!

