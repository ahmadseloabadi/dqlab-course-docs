library(caret)
index = createDataPartition(data_select_new$REKOMENDASI_TINDAK_LANJUT, p = .95, list = FALSE)
train = data_select_new[index,]
test = data_select_new[-index,]

# Teori
# Sebelum masuk pada pemodelan, kita perlu memisahkan data kita menjadi training dan testing (ada pula yang membaginya menjadi training, testing, dan validasi).

# Tujuan dari pemisahan data ini ialah untuk melihat kemampuan model kita untuk melakukan prediksi sebagaimana tujuan dari pemodelan kita.

# Lakukanlah perintah berikut :

# index = createDataPartition(data_select_new$REKOMENDASI_TINDAK_LANJUT, p = .95, list = FALSE)
