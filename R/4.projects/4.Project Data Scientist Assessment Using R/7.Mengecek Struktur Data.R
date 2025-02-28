names(trees_df)
str(trees_df)
names(trees_df)[1] <- "Diameter" 
trees_df$diameter_ft <- trees_df$Diameter*0.08333
head(trees_df)
summary(trees_df)
is.na(trees_df)

# Tugas
# Menampilkan nama kolom dan tipe data setiap kolom.
# Terdapat kesalahan penulisan untuk kolom Girth, seharusnya nama kolom tersebut adalah Diameter.
# Satuan dari kolom Girth/ Diameter adalah inch, seharusnya adalah ft,sehingga perlu ditambahkan kolom (diameter_ft) yang berisi hasil konversi inch – ft ( 1 inch = 0.08333 ft).
# Memunculkan beberapa baris dari dataset.
# Menampilkan hasil statistik deskriptif (min, max, median, mean, dan quartil) untuk semua kolom.
# Mengecek missing value.