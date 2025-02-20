#Membaca dataset dengan read.csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")
summary(penduduk.dki)


# Teori
# Selain perintah str, kita dapat juga menggunakan function summary untuk melihat kondisi dataset kita dalam bentuk ringkasan yang lebih detil.

