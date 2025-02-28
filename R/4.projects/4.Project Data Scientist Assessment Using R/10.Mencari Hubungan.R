lm(formula = Volume ~ Height + diameter_ft, data = trees_df)
plot(trees_df$diameter_ft, trees_df$Volume)
plot(trees_df$Height, trees_df$Volume)

# Tugas
# Bagaimanakah hubungan antara Volume batang pohon Cherry dengan diameter dan ketinggian (height)?

# Gunakan pula visualisasi sederhana untuk menjelaskan hubungan tersebut.