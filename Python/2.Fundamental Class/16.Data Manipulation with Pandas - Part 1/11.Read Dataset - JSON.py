import pandas as pd
# File JSON
url = 'https://storage.googleapis.com/dqlab-dataset/covid2019-api-herokuapp-v2.json'
df_json = pd.read_json(url)
print(df_json.head(10)) # Menampilkan 10 data teratas