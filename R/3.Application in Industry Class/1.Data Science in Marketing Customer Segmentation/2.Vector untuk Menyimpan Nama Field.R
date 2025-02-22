#Membaca data csv dan dimasukkan ke variable pelanggan
pelanggan <- read.csv("https://storage.googleapis.com/dqlab-dataset/customer_segments.txt",sep="\t")
#Buat variable field_yang_digunakan dengan isi berupa vector "Jenis.Kelamin", "Umur" dan "Profesi"
field_yang_digunakan <- c("Jenis.Kelamin", "Umur", "Profesi")
#Tampilan data pelanggan dengan nama kolom sesuai isi vector field_yang_digunakan
pelanggan[field_yang_digunakan]


# teori
# Perhatikan jika nama-nama field yang telah kita gunakan pada praktek sebelumnya, sebenarnya adalah sebuah vector

# c("Jenis.Kelamin", "Umur", "Profesi", "Tipe.Residen")
# Dan ini bisa dimasukkan ke dalam variable, dengan tujuan dapat digunakan berulang kali dalam script R.

# Tugas Praktek

# Gantilah tulisan [jawaban1] pada code editor dengan variable vector bernama field_yang_digunakan dan diisi dengan 3 teks: "Jenis.Kelamin", "Umur" dan "Profesi" .

# Kemudian tampilkan isi variable pelanggan dengan field_yang_digunakan dengan code yang akan menggantikan [jawaban2] pada code editor.