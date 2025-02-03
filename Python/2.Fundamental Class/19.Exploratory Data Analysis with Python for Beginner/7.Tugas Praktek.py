import pandas as pd
order_df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/order.csv")
# Standar variasi kolom product_weight_gram
print(order_df.loc[:, 'product_weight_gram'].std())
# Varians kolom product_weight_gram
print(order_df.loc[:, 'product_weight_gram'].var())

# Tugas
# “Aksara, dapat kabar terbaru dari kepala cabang. Tolong tampilkan data persebaran dari product_weight_gram penjualan cabang tadi ya,” ujar Andra kembali.

# Wah, sehari bersama Andra adalah hari penuh pekerjaan beruntun. “Siap, Bos!” candaku. 

# “Enggak, hahaha. Sudah tahu bukan caranya bagaimana?” Baru pertama kali aku mendengar Andra tertawa! Kupikir ia tipe yang serius sekali. 

# Aku pun menunjukkan layar laptopku yang sedang menggunakan standar deviasi dan variance untuk menganalisis lebar persebaran distribusi tersebut. Andra tersenyum puas melihat pilihanku yang ini.