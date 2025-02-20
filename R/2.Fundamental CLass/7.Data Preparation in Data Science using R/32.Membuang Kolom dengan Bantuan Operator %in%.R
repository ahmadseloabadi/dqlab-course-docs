#Membaca dataset csv
penduduk.dki.csv <-read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.csv", sep=",")
#Membuang kolom X, X.1, X.2 s/d X.11
penduduk.dki.csv <- penduduk.dki.csv[,!names(penduduk.dki.csv) %in% c("X", "X.1","X.2","X.3","X.4","X.5","X.6","X.7","X.8","X.9","X.10","X.11")]
names(penduduk.dki.csv)


# Teori
# Pada bab sebelumnya, data.frame hasil pembacaan read.csv memiliki kolom X, X.1, X.2, X.3 s/d kolom X.11 yang kosong semua dan sebenarnya tidak diperlukan.

# Kita dapat menghilangkan kolom-kolom ini dengan contoh berikut:

# penduduk.dki.csv <- penduduk.dki.csv[,!names(penduduk.dki.csv) %in% c("X", "X.1","X.2","X.3","X.4","X.5","X.6","X.7","X.8","X.9","X.10")]
# Penjelasan tiap elemen dari perintah tersebut adalah sebagai berikut.

# Komponen                                                    Deskripsi

# penduduk.dki.csv                                            Variable data frame dari hasil pembacaan dataset

# [ , …]                                                      Artinya data frame mengambil kolom ke …

# !                                                           Tanda bukan

# names(penduduk.dki.csv)                                     Daftar dari semua kolom dari variable penduduk.dki.csv

# %in%                                                        Operator untuk mengambil data dari vector setelahnya

# c("X","X.1","X.2","X.3","X.4","X.5","X.6","X.7","X.8",      Vector dari nama semua kolom yang akan dibuang
# "X.9","X.10")


# Atau terjemahan dari seluruh konstruksi tersebut adalah mengambil data dari data.frame penduduk.dki.csv dengan kolom-kolom yang tidak termasuk pada "X", "X.1", "X.2", "X.3", dan seterusnya sampai dengan "X.10".

# Tugas Praktek

# Gantilah bagian […1…] pada code editor untuk  membaca file Excel seperti yang ditunjukkan pada contoh di Lesson, namun dengan tambahan kolom "X.11".