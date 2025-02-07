import pandas as pd

def concat_df(train_data, test_data):
	return pd.concat([train_data, test_data], sort=True).reset_index(drop=True)

df_train = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/challenge/feature-engineering/titanic_train.csv')
df_test = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/challenge/feature-engineering/titanic_test.csv')
df_all = concat_df(df_train, df_test)
df_train.name = 'Training Set'
df_test.name = 'Test Set'
df_all.name = 'All Set' 
dfs = [df_train, df_test]

df_train.info(memory_usage=False)
print(df_train.head(10))

# TUgas
# Salah satu cara untuk menemukan Missing value pada data Anda dapat menggunakan

# .info(memory_usage=False)
# Sekarang, Anda diminta untuk mengeluarkan missing value pada dataframe df_train.

# Untuk melihat bagian awal dari data Anda dapat menggunakan

# .head(10)
# Keluarkan 10 data awal pada dataframe df_train 