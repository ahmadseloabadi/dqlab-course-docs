#Gunakan cor.test untuk mencari hubungan Pendapatan dengan Total Belanja 
cor.test(data_intro$Pendapatan,data_intro$Total)

# Teori
# Setelah melihat hubungan variabel pendapatan dengan total belanja menggunakan scatter plot diatas maka kita akan mengujinya, apakah benar-benar pendapatan memiliki pengaruh positif terhadap total belanja

# Berikut penjelasan function diatas :

# Function cor.test digunakan untuk melihat hubungan secara statistik.
# Pada korelasi test untuk mengujinya kita memakai t-test. Dengan hipotesis sebagai berikut:
# Ho : tidak ada hubungan antara pendapatan dan total belanja.
# Ha : terdapat hubungan antara pendapatan dan total belanja
