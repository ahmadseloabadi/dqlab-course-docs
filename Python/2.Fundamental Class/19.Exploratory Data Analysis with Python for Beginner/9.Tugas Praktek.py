import pandas as pd
order_df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/order.csv")
# Ganti nama kolom freight_value menjadi shipping_cost
order_df.rename(columns={'freight_value': 'shipping_cost'}, inplace=True)
print(order_df)

# TUgas
# Cobalah untuk mengubah kolom freight_value menjadi shipping_cost dalam data frame order_df, dengan menggunakan fungsi rename().

