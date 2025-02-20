#Membaca dataset dengan read.csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.tsv", sep="\t")
penduduk.dki


# Teori
# Untuk membaca file versi tsv dimana pemisah antar field adalah karakter tabulasi (tab) dari dataset kependudukan tersebut kita tetap gunakan function read.csv.

# Perbedaannya hanyalah di argumen separator dimana sebelumnya adalah tanda koma (,), maka untuk tsv perlu diganti menjadi backslash t (\t).

# sep="\t"

# Dataset file untuk contoh tsv ini dapat Anda download di url berikut:

# https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.tsv

# Untuk membaca file tersebut dengan perintah read.csv adalah sebagai berikut.

# penduduk.dki <- read.csv("https://storage.googleapis.com/dqlab-dataset/dkikepadatankelurahan2013.tsv", sep="\t")