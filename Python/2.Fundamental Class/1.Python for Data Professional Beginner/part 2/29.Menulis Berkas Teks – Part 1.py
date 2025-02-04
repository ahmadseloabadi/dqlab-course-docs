# Menulis ke file hello.txt
file = open('hello.txt', 'w')
file.write("Sekarang kita belajar menulis dengan menggunakan Python")
file.write('Menulis konten file dengan mode w (write).')
file.close()

# Teori
# Untuk menuliskan isi dari suatu berkas, aku dapat menggunakan fungsi write() atau writelines() yang telah disediakan oleh Python. Sebelum masuk ke dalam contoh penggunaan fungsi write() atau writelines(), penting bagiku untuk mengingat bahwa mode yang aku spesifikasikan pada fungsi open() akan mempengaruhi bagaimana Python menuliskan isi ke dalam berkas teks. Jika aku menggunakan mode w, maka Python akan menghapus seluruh isi dalam berkas sebelum menuliskan konten yang aku spesifikasikan.

