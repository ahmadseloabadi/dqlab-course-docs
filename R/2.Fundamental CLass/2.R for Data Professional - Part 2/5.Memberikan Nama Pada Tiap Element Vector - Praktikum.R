#Masukkan nama hari dari Senin - Jumat
nama_hari <- c("Senin","Selasa","Rabu","Kamis","Jumat")

#Masukkan jam kerja berurutan dari jam kerja di hari senin
jam_kerja <- c(8, 7.5, 10, 7, 7.5)

#Memberikan nama pada vector jam_kerja
names(jam_kerja) <- nama_hari

#Tampilkan isi jam_kerja sekarang
jam_kerja


# Teori
# “Ndra, sebelumnya kita sudah membuat vector bernama jam kerja yang berisi jam kerja kamu selama minggu ini, tapi jika vector jam_kerja tersebut diberikan kepada orang lain seperti Kroma, belum tentu mereka akan paham konteks dari isi vector tersebut. Jadi, bagaimana caranya agar orang lain bisa paham?”


# “Caranya bisa dengan memberikan nama pada vector untuk membantu memberikan konteks mengenai isi vector. Penamaan ini juga termasuk langkah yang penting. Cara memberikan nama pada vector bisa dengan menggunakan function names().

