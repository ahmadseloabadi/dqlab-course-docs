# Dua buah data yang tersimpan dalam tipe list
data1 = [70, 70, 70, 100, 100, 100, 120, 120, 150, 150]
data2 = [50, 60, 60, 50, 70, 70, 100, 80, 100, 90]
# Definisikan fungsi hitng_rata_rata
def hitung_rata_rata(data):
    jumlah = 0
    for item in data:
        jumlah += item
    rata_rata = jumlah/len(data)
    return rata_rata
# Hitung nilai rata-rata dari kedua data yang dimiliki
print('Rata-rata data1:')
print(hitung_rata_rata(data1))
print('Rata-rata data2:')
print(hitung_rata_rata(data2))

# Tugas: 
# Aksara, pekerjaan terakhirmu baru bisa saya review sore nanti. Saat ini, kita sedang butuh bantuanmu untuk menentukan nilai rata-rata untuk data yang sudah saya buatkan dalam bentuk list of numeric bertipe int/float berikut ini. Tolong kirimkan hasilnya sebelum jam 3 siang. Terima kasih.