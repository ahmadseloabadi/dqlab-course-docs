# Definsikan fungsi dengan nilai default argument kedua adalah "".
def fungsi_dengan_argumen(nama_depan, nama_belakang=""):
    print(nama_depan+' '+nama_belakang)
# Panggil fungsi dengan memasukkan argumen nama_depan "John"
fungsi_dengan_argumen("John")
# Panggil fungsi dengan memasukkan argumen
# nama_depan yaitu "John" dan nama_belakang "Doe"
fungsi_dengan_argumen("John", "Doe")

# Teori
# Saat aku melakukan pemanggilan fungsi dengan jumlah argumen yang tidak sesuai, Python akan mengembalikan pesan error yang menyatakan bahwa terdapat argumen yang belum disuplai agar fungsi dapat dijalankan dengan baik.

# Berikut ini adalah contoh pesan error yang akan dikembalikan oleh Python saat aku hanya menyuplai satu argumen saja untuk fungsi_dengan_argumen:

# Type Error: function fungsi_dengan_argumen() missing 1 required positional argument: nama_belakang
 

# Bahasa Python mengizinkan aku untuk memberikan suatu nilai default terkait dengan sebuah argumen dalam sebuah fungsi. Melalui fitur ini, suatu argumen dalam sebuah fungsi akan bersifat opsional.