library(lubridate)

df_event$created_at <- ymd_hms(df_event$created_at)
dplyr::glimpse(df_event)

# Tugas
# Terlihat bawah created_at berisi timestamp, tetapi tipe datanya adalah chr (character). untuk memudahkan, ubah dulu tipe data tersebut menjadi tipe timestamp agar nanti bisa diolah dengan lebih baik.

# Gunakan fungsi ymd_hms dari package lubridate untuk mengubah character berformat Year-Month-Date Hour-Minute-Second menjadi tipe timestamp. Setalah load package lubridate, baru jalankan:

# df_event$created_at <- ymd_hms(df_event$created_at)
# lalu jalankan lagi fungsi glimpse untuk melihat perbedaan tipenya,

# dplyr::glimpse(df_event)