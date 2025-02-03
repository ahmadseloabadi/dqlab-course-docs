import pandas as pd
order_df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/order.csv")
# Hitung rata rata dari price per payment_type
rata_rata = order_df["price"].groupby(order_df["payment_type"]).mean()
print(rata_rata)

# Tugas
# Cobalah untuk mencari rata rata dari price per payment_type dari dataset order_df ("https://storage.googleapis.com/dqlab-dataset/order.csv")!

