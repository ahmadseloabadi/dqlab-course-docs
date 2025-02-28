library(readr)
electric_bill <- read_csv("https://storage.googleapis.com/dqlab-dataset/electric_bill.csv")
model <- lm(amount_paid ~ num_people + housearea, data = electric_bill)

model

# Tugas
# Dataset https://storage.googleapis.com/dqlab-dataset/electric_bill.csv berikut menyajikan informasi terkait biaya listrik rumah tangga di suatu negara.

# Dari data tersebut anda ingin mengetahui faktor – faktor apa saja yang mempengaruhi total biaya listrik di setiap rumah tangga.

# Buatlah model sederhana yang dapat menjelaskan bagaimana pengaruh "num_people" dan "housearea" terhadap "amount_paid"!