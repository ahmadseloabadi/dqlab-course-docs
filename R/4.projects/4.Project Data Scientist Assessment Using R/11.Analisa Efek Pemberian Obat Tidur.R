library(readr) #pre-defined
library(dplyr) #pre-defined

sleep_df <- read_csv('https://storage.googleapis.com/dqlab-dataset/sleep.csv') #pre-defined

# Save the data in two different dataframe/vector
group1 <- filter(sleep_df, sleep_df$group == 1)
group2 <- filter(sleep_df, sleep_df$group == 2)

# Compute t-test
t_test <- t.test(group1$extra, group2$extra)
t_test

# Tugas
# Selanjutnya, kamu diminta untuk menganalisa efek pemberian obat tidur terhadap peningkatan lamanya waktu tidur dari sekelompok mahasiswa. Berikut preview dari observasi tersebut :



 

# Extra = peningkatan waktu tidur dalam satuan jam (hour) – numeric

# Group = jenis treatment/dosis obat yang diberikan – factor

# ID = ID mahasiswa yang diobservasi – factor

 

# Jika diasumsikan data hasil observasi tersebut terdistribusi normal, lakukanlah uji hipotesis untuk mengetahui apakah terdapat perbedaan efek antara group 1 dan group 2.

# H0 = Tidak ada perbedaan efek antara group 1 dan group 2
# H1 = Terdapat perbedaan efek group 1 dan group 2
# Cara 1 :

# # Load library & datasetinstall.packages("tidyverse") #install in backendlibrary(readr) #pre-definedlibrary(dplyr) #pre-defined sleep_df <- read_csv('https://storage.googleapis.com/dqlab-dataset/sleep.csv') #pre-defined # Save the data in two different dataframe/vectorgroup1 <- filter(sleep_df, sleep_df$group == 1)group2 <- filter(sleep_df, sleep_df$group == 2) # Compute t-testt_test <- t.test(group1$extra, group2$extra)t_test 

# Cara 2 :

#              # Load library & dataset

# install.packages("tidyverse")library(readr) #pre-defined sleep_df <- read_csv('sleep.csv') #pre-defined # Directly compute t-test without save it in 2 different dataframe/vectort_test <- t.test(extra ~ group, data = sleep_df)t_test