
# Importlah pandas sebagai aliasnya pd
import pandas as pd
# Data jenis_kelamin
gender = ["Pria", "Pria", "Wanita", "Pria", "Wanita",
          "Wanita", "Wanita", "Pria", "Pria", "Wanita"]
df = pd.DataFrame({"jenis_kelamin": gender})
# Cek tipe data
print("Cek tipe data awal:\n ", df.dtypes)

# Buat kategori untuk kolom jenis_kelamin
cat = pd.CategoricalDtype (["Pria", "Wanita"])
# Ubahlah tipe data kolom jenis_kelamin
df = df.astype({"jenis_kelamin": cat})
# Cek kembali tipe data
print("\nCek tipe data setelah diubah:\n ", df.dtypes)

# Tugas
# -Sekarang, coba deh kamu ketikkan sepuluh butir data secara acak saja untuk kolom jenis_kelamin dalam python list (10 buah data ini telah diberikan melalui predefined code di Code Editor dengan list gender). 
# -Buat data frame df yang kolomnya bernama jenis_kelamin dan diisi oleh list gender
# -Setelah itu kamu buat kategorinya dengan pandas.CategoricalDtype yang ditampung dengan nama cat, dan
# -kemudian ubahlah tipe data kolom tersebut menjadi category

# Teori
# Di python untuk skala interval dan rasio dapat menggunakan tipe data int, float, numpy.intXX, numpy.floatXX, pandas.IntXXDtype, atau pandas.FloatXXDtype
# untuk data  kategori untuk skala nominal dan ordinal ditulis dengan menggunakan string
# saat menggunakan pandas.DataFrame, kolom dengan isi butir data berupa string akan bertipe object. perlu mengubahnya menggunakan pandas.CategoricalDtype

# pandas.CategoricalDtype(categories=None, ordered=False)
# dengan parameternya

# categories:list kategori, opsional

# ordered:bool, kategorinya terurut atau tidak, default adalah False (tidak terurut). Jika bernilai True kategorinya memiliki tingkatan/level sehingga dapat digunakan untuk skala ordinal.

# note : Method CategoricalDtype akan menghasilkan skala data kategori atau ordinal yang dapat digunakan untuk merubah tipe data pada kolom DataFrame. Jika pandas.CategoricalDtype dinyatakan ke dalam variabel cat dan DataFrame sebagai nama_dataframe, maka suatu kolom DataFrame nama_kolom dapat diubah tipe datanya dari object ke category dengan

# nama_dataframe = nama_dataframe.astype({nama_kolom: cat})