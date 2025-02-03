import pandas as pd
order_df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/order.csv")
# Hitung quartile 1
Q1 = order_df[['product_weight_gram']].quantile(0.25)
# Hitung quartile 3
Q3 = order_df[['product_weight_gram']].quantile(0.75)
# Hitung inter quartile range dan cetak ke console
IQR = Q3-Q1
print(IQR)

# Tugas
# Sepertinya aku perlu  menemukan batas IQR agar bisa menentukan outliers bagi kolom product_weight_gram.

