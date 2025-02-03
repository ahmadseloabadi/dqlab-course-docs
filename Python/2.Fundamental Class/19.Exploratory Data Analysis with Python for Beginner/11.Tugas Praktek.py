import pandas as pd
order_df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/order.csv")
# Hitung harga maksimum pembelian customer
sort_harga = order_df.sort_values(by="price", ascending=False)
print(sort_harga)

# Tugas
# Tepat ketika kukira sudah selesai, ternyata masih ada tambahan! Lagi-lagi dari Andra. Aku tampaknya harus lebih terbiasa dengan cara bekerja seperti ini. 

# “Aksara, ini sudah menyeluruh dan lengkap. Tambahin satu lagi saja, tolong cari berapa harga maksimum pembelian customer di dataset order_df.”


 