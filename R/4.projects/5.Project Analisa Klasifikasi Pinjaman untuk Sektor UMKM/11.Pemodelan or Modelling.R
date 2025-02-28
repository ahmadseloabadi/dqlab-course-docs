train2 = train
# Setting the reference
train2$REKOMENDASI_TINDAK_LANJUT = relevel(train2$REKOMENDASI_TINDAK_LANJUT, ref = "Angsuran Biasa")

# Training the model
require(nnet)

# Training the multinomial model
multinom_model = multinom(REKOMENDASI_TINDAK_LANJUT ~ ., data = train2)

# Checking the model
summary(multinom_model)

# Converting the coefficients to odds by taking the exponential of the coefficients.
exp(coef(multinom_model))

head(round(fitted(multinom_model), 2))

# predicting the values for train dataset
train2$ClassPredicted = predict(multinom_model, newdata = train2, "class")
train_prob = predict(multinom_model, newdata = train2, "probs")
df = train_prob
df$max = apply(df,1,max)
train2$score = df$max
test_prob = predict(multinom_model, newdata = test, "probs")
df2 = test_prob
df2$max = apply(df2,1,max)
# Building classification table
tab_train = table(train2$REKOMENDASI_TINDAK_LANJUT, train2$ClassPredicted)
round((sum(diag(tab_train))/sum(tab_train))*100,4)
test$ClassPredicted = predict(multinom_model, newdata = test, "class")
test$score = df2$max
tab_test = table(test$REKOMENDASI_TINDAK_LANJUT, test$ClassPredicted)
round((sum(diag(tab_test))/sum(tab_test))*100,4)

# Teori
# Sekarang kita siap untuk masuk pada pemodelan.

# Ingat bahwa kita menggunakan Model Regresi Multinomial, dimana kita perlu menentukan referensi dari kelas target.

# Referensi kelas target ini ialah kelas yang memiliki jumlah anggota terbanyak.

# Perhatikan dan lakukanlah sintak berikut:
# train2 = train
# # Setting the reference
# train2$REKOMENDASI_TINDAK_LANJUT = relevel(train2$REKOMENDASI_TINDAK_LANJUT, ref = "Angsuran Biasa")

# # Training the model
# require(nnet)

# # Training the multinomial model
# multinom_model = multinom(REKOMENDASI_TINDAK_LANJUT ~ ., data = train2)

# # Checking the model
# summary(multinom_model)

# # Converting the coefficients to odds by taking the exponential of the coefficients.
# exp(coef(multinom_model))

# head(round(fitted(multinom_model), 2))

# # Predicting the values for train dataset
# train2$ClassPredicted = predict(multinom_model, newdata = train2, "class")

# Untuk keperluan tertentu, kita perlu mengetahui peluang dari tiap baris data (perwakilan dari pelanggan) untuk masuk pada kelas target tertentu.

# Tujuannya ialah untuk melihat seberapa pengaruh model untuk melakukan klasifikasi. Selain itu bisa juga dari sudut pandang bisnis, dalam kasus real penentuan threshold pada nilai peluang juga dikaitkan dengan beberapa faktor, misalnya revenue pelanggan.

# Untuk melihat nilai peluang bahwa suatu pelanggan masuk pada kelas target tertentu lakukanlah sintak berikut:

# train2$ClassPredicted = predict(multinom_model, newdata = train2, "class")
# train_prob = predict(multinom_model, newdata = train2, "probs")
# df = train_prob
# df$max = apply(df,1,max)