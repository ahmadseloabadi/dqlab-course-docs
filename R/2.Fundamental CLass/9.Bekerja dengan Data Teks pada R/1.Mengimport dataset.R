#Preload dataset yang digunakan
data <- read.table(
  file = "https://storage.googleapis.com/dqlab-dataset/datalahir_teks_dqlab.txt",
  header = FALSE, 
  sep = "\n", 
  na.strings=c("NA", "N/A", ""), 
  col.names = 'data_list',
  skip = 1)

#Menampilkan data yang sudah di-load ke dalam workspace
data

