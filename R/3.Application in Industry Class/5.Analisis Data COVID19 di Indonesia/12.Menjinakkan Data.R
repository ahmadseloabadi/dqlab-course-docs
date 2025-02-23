library(dplyr)
new_cov_jabar <-
  cov_jabar %>% 
  select(-contains("DIRAWAT_OR_ISOLASI")) %>% 
  select(-starts_with("AKUMULASI")) %>% 
  rename(
    kasus_baru = KASUS,
    meninggal = MENINGGAL,
    sembuh = SEMBUH
  ) %>% 
  mutate(
    tanggal = as.POSIXct(tanggal / 1000, origin = "1970-01-01"),
    tanggal = as.Date(tanggal))

str(new_cov_jabar)   

# Teori
# Setelah mengekstrak dan mengamati cov_jabar, Anda menemukan beberapa kejanggalan pada data tersebut. Diantaranya adalah kejanggalan data pada kolom tanggal dan format penulisan kolom yang tidak konsisten. Sekarang Anda akan mencoba melakukan beberapa tahapan untuk menjinakan data tersebut sehingga dapat diolah dan dianalisis dengan lebih mudah.

# Sebelum itu, silakan Anda aktifkan paket dplyr yang akan dipergunakan untuk melakukan pengolahan data.

# Ada beberapa tahapan yang akan Anda lakukan untuk menjinakan data cov_jabar, yaitu:

# Menghapus kolom “DIRAWAT_OR_ISOLASI” dan “AKUMULASI_DIRAWAT_OR_ISOLASI”
# Menghapus semua kolom yang berisi nilai kumulatif
# Mengganti nama kolom “KASUS” menjadi “kasus_baru”
# Merubah format penulisan kolom berikut menjadi huruf kecil
# kolom MENINGGAL
# kolom SEMBUH
# Memperbaiki data pada kolom tanggal
# Lengkapilah baris kode berikut untuk melakukan menjinakan data sesuai dengan tahapan yang telah Anda rencanakan! Anda akan menggunakan operator pipe (%>%) untuk merangkai fungsi menjadi sebuah pipeline. Simpan hasil pengolahan Anda dengan nama new_cov_jabar.