#Preload dataset yang digunakan
data <- read.table(
  file = "https://storage.googleapis.com/dqlab-dataset/datalahir_teks_dqlab.txt",
  header = FALSE, 
  sep = "\n", 
  na.strings=c("NA","N/A",""), 
  col.names = 'data_list',
  skip = 1)

#Menampilkan 5 data teratas  yang sudah di-load ke dalam workspace
head(data)

#Memisahkan data menggunakan strsplit
data <- strsplit(data$data_list,split = "|||", fixed = TRUE)

#Merubah data menjadid dataframe
df <- data.frame(matrix(unlist(data), nrow=length(data), byrow=TRUE))

#Memberikan nama pada setiap kolom
colnames(df) <- c('Nama','Tempat_Lahir', 'Tanggal_Lahir', 'Provinsi')

#Tampilkan 5 baris pertama dari df
head(df,5)

# Teori
# Untuk menjawab pertanyaanmu sebelumnya mengenai memisahkan data ke kolomnya masing-masing yang sesuai, kita dapat menggunakan function strsplit() yang ada pada R. Untuk syntax penggunaan strsplit() adalah demikian”, Andra menjelaskan sambil mengetikkan sesuatu pada keyboardnya.

# Aku memajukan badanku mendekati laptop Andra dan mengamati layar dengan serius.

# strsplit(x, split, fixed)

# dengan

# Parameter           Penjelasan

# x                   Data character yang akan dipisahkan

# split               Pemisah dari data character

# fixed               Bernilai TRUE / FALSE. Apabila nilai dari fixed adalah TRUE, maka pemisahan karakter akan dilakukan sesuai dengan value dari split.

# “Nah, kira-kira begitu cara menggunakan function strsplit(). Yuk kita langsung praktekkan saja supaya kamu lebih paham cara menggunakannya!”