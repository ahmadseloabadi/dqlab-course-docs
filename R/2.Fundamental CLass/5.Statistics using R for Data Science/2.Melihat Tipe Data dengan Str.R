#Membaca dataset dengan read.csv dan dimasukkan ke variable data_intro
data_intro <- read.csv("https://storage.googleapis.com/dqlab-dataset/data_intro.csv",sep=";")
str(data_intro)


# Teori
# Adalah praktek yang sangat baik untuk mengenal atau melakukan profile tiap dataset yang sudah dibaca ke dalam R – dan secara sederhana di R dapat kita lakukan dengan function str. Function str akan menyajikan informasi tiap kolom dataset dalam format yang compact – satu baris informasi saja per row. Pendekatan singkat dan jelas ini membuat str menjadi function favorit dan efektif untuk mengenal data di tahap awal.

# Tugas Praktek

# Gantilah bagian […1…] pada code editor dengan perintah str yang menggunakan input variable data_intro.