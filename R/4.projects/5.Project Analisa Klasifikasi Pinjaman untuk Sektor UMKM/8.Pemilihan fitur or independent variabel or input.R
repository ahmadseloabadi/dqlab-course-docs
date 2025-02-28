colnames(data_reduce)


data_select = data_reduce[, c("KARAKTER","KONDISI_USAHA","KONDISI_JAMINAN","STATUS","KEWAJIBAN","OSL","KOLEKTIBILITAS","REKOMENDASI_TINDAK_LANJUT")]

data_non_na = na.omit(data_select)

# Teori
# Dalam melakukan pemodelan tentu kita perlu meninjau variabel-variabel apa saja yang berpengaruh pada model kita, khususnya pada klasifikasi. Pada kesempatan ini kita menggunakan model Regresi Multinomial.

# Lalu bagaimana menentukan variabel apa saja yang berpengaruh tersebut?

# Ada banyak alternatif, salah satunya ialah Information Gain. Melalui information gain diambil nilai importance variabel yang lebih dari 0.02 (kamu dapat eksplorasi apa yang terjadi apabila kita mengambil nilai yang kurang dari 0.02).

# Berikut hasil dari information gain:

#                 attr_importance
# KONDISI_JAMINAN     0.038889946
# STATUS              0.109539204
# KEWAJIBAN           0.002414449
# OSL                 0.006693011
# KOLEKTIBILITAS      0.084934084

# Lakukanlah sintak berikut untuk memilih kolom-kolom yang akan diproses:

# colnames(data_reduce)
# data_select =
# data_reduce[,c("KARAKTER","KONDISI_USAHA","KONDISI_JAMINAN","STATUS","KEWAJIBAN","OSL","KOLEKTIBILITAS","REKOMENDASI_TINDAK_LANJUT")]
# Jika pada data terdapat NA value, nilai tersebut dapat pula untuk dipangkas. Hapuslah nilai NA tersebut. 