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

print('Number of Training Examples = {}'.format(df_train.shape[0]))
print('Number of Test Examples = {}\n'.format(df_test.shape[0]))
print('Training X Shape = {}'.format(df_train.shape))
print('Training y Shape = {}\n'.format( df_train['Survived'].shape[0]))
print('Test X Shape = {}'.format(df_test.shape))
print('Test y Shape = {}\n'.format(df_test.shape[0]))
print(df_train.columns)
print(df_test.columns)

# Tugas
# Exploring Data
# Untuk mengetahui bentuk dari dataframe kita, berapa banyak row dan column yang ada di dalamnya, kita dapat menggunakan .shape.
# contoh:

# df.shape #untuk mengeluarkan array yang berisi row dan column
# df.shape[0] #untuk mendapatkan row
# df.shape[1] #untuk mendapatkan column
# Untuk bagian [...1...] isilah untuk mendapatkan jumlah row pada dataframe df_train 
# Untuk bagian [...2...] isilah untuk mendapatkan jumlah row pada dataframe df_test 
# Untuk bagian [...3...] isilah untuk mendapatkan jumlah row dan column pada dataframe df_train
# Untuk bagian [...4...] isilah untuk mendapatkan jumlah row pada dataframe df_train pada column Survived
# Untuk bagian [...5...] isilah untuk mendapatkan jumlah row dan column pada dataframe df_test
# Untuk bagian [...6...] isilah untuk mendapatkan jumlah row pada dataframe df_test
# Untuk bagian [...7...] isilah untuk mendapatkan column yang terdapat pada df_train dengan menggunakan .columns
# Untuk bagian [...8...] isilah untuk mendapatkan column yang terdapat pada df_test dengan menggunakan .columns