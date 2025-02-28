library(dplyr)
df_cabang_umur <- df_loan %>% 
  group_by(cabang) %>%
  summarise(pertama_cair = min(tanggal_cair)) %>% 
  mutate(umur = as.numeric(as.Date('2020-05-15') - as.Date(pertama_cair)) %/% 30)
df_cabang_umur


# Tugas
# Karena tidak tersedia data umur cabang, maka perlu dihitung terlebih dahulu,
# yakni dengan menghitung sudah berapa lama sejak tanggal cair pertama sampai dengan bulan Mei.

# Gunakan data df_loan yang berisi semua tanggal_cair dari awal lalu cari tanggal_cair pertama kali per cabang dan simpan sebagai pertama_cair.

# kemudian hitung umur dengan rumus.

# umur = as.numeric(as.Date('2020-05-15') - as.Date(pertama_cair)) %/% 30
# Untuk memudahkan cara perhitungan umur dengan membagi jumlah selisih hari dengan 30, karena itu tanggal batas nya menggunakan tanggal tengah bulan (2020-05-15), agar tidak terlalu mempengaruhi presisi perhitungan.

# Lalu simpan sebagai df_cabang_umur.

# Terakhir tampilkan data df_cabang_umur

# Jangan lupa gunakan pipe %>% untuk menyambungkan fungsi.