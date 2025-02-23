library(dplyr)
cov_jabar_pekanan <-
  cov_jabar_pekanan %>% 
  mutate(
    jumlah_pekanlalu = dplyr::lag(jumlah, 1),
    jumlah_pekanlalu = ifelse(is.na(jumlah_pekanlalu), 0, jumlah_pekanlalu),
    lebih_baik = jumlah < jumlah_pekanlalu
  )
glimpse(cov_jabar_pekanan)

# Teori
# Pertanyaan baru muncul di benak Anda setelah melakukan inspeksi terhadap data cov_jabar_pekanan tersebut: “Apakah pekan ini lebih baik dari pekan kemarin?”.

# Demi menjawab hal tersebut Anda melakukan kalkulasi sederhana dengan tahapan berikut:

# Membuat kolom baru yang berisi jumlah kasus baru dalam satu pekan sebelumnya. Kolom ini diberi nama “jumlah_pekanlalu”.
# Mengganti nilai NA pada kolom “jumlah_pekanlalu” dengan nilai 0
# Melakukan komparasi antara kolom “jumlah” dengan kolom “jumlah_pekanlalu”. Hasil komparasi ini disimpan dalam kolom baru dengan nama “lebih_baik”, isinya adalah TRUE apabila jumlah kasus baru pekan ini lebih rendah dibandingkan jumlah kasus pekan lalu
# Lengkapilah baris kode berikut untuk mengerjakan tahapan yang telah Anda rencanakan! Anda akan menggunakan fungsi lag() dari dplyr untuk membuat kolom “jumlah_pekanlalu”. Perhatikan bahwa disini fungsi tersebut dituliskan sebagai dplyr::lag() untuk menghindari konflik dengan fungsi lag() dari paket stats. Inspeksi hasil pekerjaan Anda dengan menggunakan fungsi glimpse()!