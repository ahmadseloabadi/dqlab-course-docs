# Untuk seluruh jawaban yang ditandai dengan ___,
#   gunakan lowercase string!
# Jika untuk jawaban nama kolom lebih dari satu, nama kolom 
#   harus berurut dan dinyatakan menggunakan list of string
# Nama-nama kolom: jenis_kelamin, umur_tahun, jenis_pekerjaan,
#   cek_medis, tinggi_badan_cm, berat_badan_kg
# Gunakan tanda petik "" untuk mengetikkan jawaban yang bertipe string.

# Skala nominal/kategorikal
nominal = ['jenis_kelamin','jenis_pekerjaan']
print("Kolom dengan skala nominal/kategorikal:\n ", nominal)

# Skala ordinal
ordinal = 'cek_medis'
print("\nKolom dengan skala ordinal:\n ", ordinal)

# Skala interval
interval = None
print("\nKolom dengan skala interval:\n ", interval)

# Skala rasio
rasio = ['umur_tahun','tinggi_badan_cm', 'berat_badan_kg']
print("\nKolom dengan skala rasio:\n ", rasio)

# Teori
# 1. Nominal/Kategorikal:Data dengan skala pengukuran nominal/kategorikal memiliki sifat:

# -tidak memiliki urutan
# -setiap butir data hanya memiliki satu nilai pada kategorinya
# -hanya dapat dihitung berapa banyak jumlah setiap kategori
# -ukuran pemusatan data dengan skala ini adalah modus (kategori yang paling banyak muncul)

#  contoh: warna mata yang terdiri atas kategori – misalnya –coklat, biru, hijau.

# 2. Ordinal:Data dengan skala pengukuran ordinal memiliki sifat:

# -memiliki urutan atau tingkatan, tidak puas tingkat/levelnya lebih rendah dibandingkan dengan kurang puas, dst.
# -setiap butir data hanya memiliki satu nilai pada kategorinya
# -antar tingkatan kategori tidak dapat dilakukan operasi matematis
# -hanya dapat dihitung berapa banyak jumlah setiap kategori
# -ukuran pemusatan data dengan skala ini adalah modus dan median (kategori yang paling banyak muncul dan nilai tengah karena dapat diurutkan)

# contoh: tingkat kepuasan suatu layanan – misalnya – tidak puas < kurang puas < puas < sangat puas.

# 3. Interval:Data dengan skala pengukuran interval memiliki sifat:

# -memiliki urutan nilai.
# -antar butir data dapat dilakukan operasi matematis
# -dapat dilakukan perhitungan statistik berupa ukuran pemusatan data (modus, median, mean atau nilai rata-rata) dan ukuran penyebaran data (varians dan standar deviasi atau simpangan baku)
# -tidak memiliki nilai 0 sesungguhnya, maksudnya skala terendah data ini adalah nol – misal – suhu dalam Celcius dapat benilai negatif yang berarti skala terendah bukan 0; score SAT terendah adalah 400 dan tidak mungkin peserta tes memperoleh lebih rendah dari 400 ini.

# contoh: suhu/temperatur dalam skala Celcius atau Fahrenheit; dan skor SAT (dalam rentang 400 – 1600).

# 4. Rasio :Data dengan skala pengukuran rasio memiliki sifat:

# -memiliki urutan nilai.
# -antar butir data dapat dilakukan operasi matematis
# -dapat dilakukan perhitungan statistik berupa ukuran pemusatan data (modus, median, mean atau nilai rata-rata) dan ukuran penyebaran data (varians dan standar deviasi atau simpangan baku)
# -memiliki nilai 0 sesungguhnya (skala terendah data adalah nol); panjang; berat; atau tinggi suatu objek tidak akan mungkin memiliki nilai negatif.
# -antar butir data dapat dibandingkan (dapat dihitung rasionnya) karena memiliki nilai 0 sesungguhnya.

#  contoh: panjang suatu objek, berat suatu objek, dan tinggi suatu objek.