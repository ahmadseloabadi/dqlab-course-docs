# Importlah pandas sebagai aliasnya pd
import pandas as pd
# Data berat badan 120 orang 
bb120 = [71.2, 66.8, 66.9, 65.9, 69.7, 63.4, 71.5, 66.5, 68.6, 67.5, 
         70.9, 63.9, 67.4, 67.2, 70.3, 65.8, 67.7, 66.2, 68.1, 69.2, 
         65.8, 70.3, 69.8, 69.0, 69.8, 66.6, 67.8, 66.1, 67.5, 69.1, 
         66.6, 67.2, 66.6, 66.3, 66.7, 68.0, 65.8, 68.5, 71.3, 69.5, 
         67.6, 66.2, 66.5, 71.4, 68.1, 66.7, 68.4, 72.2, 68.2, 69.2, 
         68.6, 67.3, 65.7, 67.3, 67.6, 69.2, 69.7, 69.9, 68.6, 69.8, 
         66.5, 70.5, 69.0, 67.4, 69.0, 67.8, 70.3, 71.0, 72.4, 65.2, 
         65.1, 67.0, 68.3, 69.8, 68.6, 64.0, 67.4, 69.7, 68.5, 69.5, 
         67.6, 67.6, 68.4, 68.8, 68.4, 68.2, 66.7, 68.8, 68.2, 70.3, 
         70.4, 68.4, 67.2, 66.7, 68.8, 68.2, 67.3, 68.1, 66.8, 69.4, 
         67.1, 70.4, 68.8, 69.2, 65.8, 68.3, 69.5, 66.1, 67.5, 68.1, 
         65.3, 68.6, 69.7, 66.3, 68.7, 65.4, 67.9, 64.8, 70.2, 68.8]
# Bin dengan menggunakan urutan bilangan (menggunakan list)
# yang sesuai dengan tabel yang dicontohkan
bin_list = list(range(63, 74))
print("bin berat badan dalam urutan bilangan:\n", bin_list)
# Buatlah kelompok data seperti tabel yang ditunjukkan
bin_bb = pd.cut(bb120 , bin_list, right=False, include_lowest=True)
# Ubah bb120 ke dalam pandas.DataFrame
df_bb120 = pd.DataFrame(bb120)
# Kelompokkanlah df_bb120 ke dalam bin yang telah disediakan
tabel_bb = df_bb120.groupby(bin_bb).count()
# Untuk menset header dari tabel_bb
tabel_bb.rename(columns={0: "frekuensi"}, inplace=True)
tabel_bb.index.rename("rentang berat badan [kg]", inplace=True)
print("\nData berkelompok berat badan 120 orang:\n", tabel_bb)
# Tugas
# -membuat list dengan nama bin_list yang berisi nilai bilangan bulat dari nilai paling minimum hingga nilai paling maksimum dari rentang berat badan,
# -menggunakan pandas.cut untuk membuat kelompok berat badan berdasarkan bin_list yang pastinya sesuai dengan interval setiap kelompok pada tabel yang ditunjukkan, keluarannya dinyatakan ke dalam variabel bin_bb
# -menerapkan method .groupby pada data frame berat badan df_bb120 dan kemudian diagregasi dengan .count untuk mendapatkan frekuensinya.

# Teori 
# Untuk membuat data berkelompok dapat menggunakan method .cut dari pandas,

# pandas.cut(x, bins, right=True, labels=None, retbins=False, precision=3, include_lowest=False, duplicates=”raise”, ordered=True)

# dengan parameter

# x:array 1D yang dapat berupa 1D list, 1D numpy.ndarray, atau pandas.series yang akan dihitung persentilnya

# bins:pengelompokkan data dapat dilakukan dengan menggunakan
#     -int, yang berupa jumlah bin sehingga menghasilkan rentang data dengan lebar yang sama.
#     -urutan bilangan, (list, numpy 1D array) yang merupakan batas untuk setiap interval, misal bins=[1, 2, 4] adalah untuk 2 bin dalam interval 1 s/d 2, dan 2 s/d 4. Inclusif atau ekslusif ditentukan oleh parameter right dan include_lowest yang diterapkan untuk setiap bin (rentang/interval) yang dinyatakan.
#     -IntervalIndex menyatakan secara tepat batas bawah dan batas atas setiap bin yang akan dibuat. Untuk penggunaannya dapat melihat pandas.IntervalIndex!

# right:bool, default adalah True (inklusif); menentukan batas atas setiap bin bersifat inklusif atau eklusif dan hanya berefek untuk bins berupa int atau urutan bilangan.

# labels:array atau False, default adalah None; digunakan untuk menspesifikasi label untuk setiap bin yang panjangnya harus sama dengan jumlah bin. Labels diabaikan jika bins adalah IntervalIndex.

# retbins:default adalah False untuk tidak menimpa array input.

# precision:kepresisian nilai interval yang dihasilkan, default adalah 3 digit dibelakang koma.

# include_lowest:bool, default adalah False (eklusif); menentukan batas bawah setiap bin bersifat inklusif atau eklusif.

# duplicates:Jika batas setiap bin tidak unik maka keluarkan ValueError atau buang nilai yang tidak unik.

# ordered:bool, default adalah True; apakah label yang dihasilkan berurut atau tidak.

# Langkah ini hanya menghasilkan bin untuk data. Jika data bertipe pandas.DataFrame maka dapat menerapkan method .groupby pada data ini dan kemudian menggunakan aggregasi .count(). Aggregasi count digunakan untuk menghitung seberapa banyak data di dalam binnya.

# Jika keluaran pandas.cut disebut dengan sebuah variabel dengan nama, misalnya, grup maka

# data.groupby(grup).count()

# yang akan menghasilkan frekuensi seperti yang ditunjukkan oleh tabel pengelompokkan data.