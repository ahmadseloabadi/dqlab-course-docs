FALSE

# Teori
# Seperti yang diketahui ketika data ditarik dari suatu sumber terkadang ada kondisi tipe data tidak dengan tepat direpresentasikan. Misalkan semua record/baris pada suatu kolom berisi seharusnya data numerik akan tetapi disajikan didalam suatu karakter angka.

# R sendiri memiliki fungsi sapply yang dapat digunakan untuk mengkoversi tipe data. Dalam hal ini fungsi sapply menerima input/argumen fungsi berupa list, vector, atau data frame dan mengembalikan/menghasilkan output berupa vector atau matrix.

# Tugas
# Cobalah untuk meninjau kembali kolom "PRODUK", "PYD", "TENOR", dan "OSL" apakah perlu dikonversikan menjadi bertipe numerik atau tidak.

# Jika tidak, kamu dapat menjawab dengan mengetikkan FALSE di code editor.
# data_reduce[, 8:11] = sapply(data_reduce[, 8:11], as.numeric)