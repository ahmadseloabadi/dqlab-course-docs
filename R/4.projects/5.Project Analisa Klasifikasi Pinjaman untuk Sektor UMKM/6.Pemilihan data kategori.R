data_kategorik = data_reduce[, c("KONDISI_USAHA","KONDISI_JAMINAN","REKOMENDASI_TINDAK_LANJUT")]
data_reduce$REKOMENDASI_TINDAK_LANJUT = as.factor(data_reduce$REKOMENDASI_TINDAK_LANJUT)
chisq.test(data_kategorik$KONDISI_USAHA, data_kategorik$REKOMENDASI_TINDAK_LANJUT)
chisq.test(data_kategorik$KONDISI_JAMINAN, data_kategorik$REKOMENDASI_TINDAK_LANJUT)



# Teori
# Tentu saja kamu menyadari bahwa data yang dimiliki ada yang bersifat kategori. Data kategori dapat dipilih melalui kolom-kolom "KONDISI_USAHA", "KONDISI_JAMINAN", "REKOMENDASI_TINDAK_LANJUT". Ketikkanlah potongan kode berikut:

# data_kategorik = data_reduce[, c("KONDISI_USAHA","KONDISI_JAMINAN","REKOMENDASI_TINDAK_LANJUT")]

# Ubah kolom "REKOMENDASI_TINDAK_LANJUT" sebagai faktor (gunakan as.factor)

# data_reduce$REKOMENDASI_TINDAK_LANJUT = as.factor(data_reduce$REKOMENDASI_TINDAK_LANJUT)

# Gunakan uji chi-square dapat digunakan untuk melihat hubungan antar variabel kategorik berikut:

# "KONDISI_USAHA" dengan "REKOMENDASI_TINDAK_LANJUT", dan
# "KONDISI_JAMINAN" dengan "REKOMENDASI_TINDAK_LANJUT"

# chisq.test(data_kategorik$KONDISI_USAHA, data_kategorik$REKOMENDASI_TINDAK_LANJUT)
# chisq.test(data_kategorik$KONDISI_JAMINAN, data_kategorik$REKOMENDASI_TINDAK_LANJUT)

# Dari hasil uji chi-square insight apakah yang dapat kamu peroleh?

# Berdasarkan uji chi-square diatas dapat disimpulkan bahwa variabel kondisi usaha memiliki hubungan dengan variabel rekomendasi tindak lanjut karena p-value < 0,05(5%). Kondisi jaminan juga memiliki hubungan dengan variabel rekomendasi tindak lanjut karena p-value < 0,05(5%).


