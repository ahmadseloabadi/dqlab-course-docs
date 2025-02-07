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

age_by_pclass_sex = df_all.groupby(['Sex', 'Pclass']).median()['Age']
df_all['Age'] = df_all.groupby(['Sex', 'Pclass'])['Age'].apply(lambda x: x.fillna(x.median()))

# Ketikkan kode yang dicontohkan
# filling the missing values in Embarked with S
df_all['Embarked']=df_all['Embarked'].fillna('S')

med_fare = df_all.groupby(['Pclass','Parch','SibSp']).Fare.median()[3][0][0]
# Filling the missing value in Faare with the median Fare of 3rd class aline passanger
df_all['Fare'] = df_all['Fare'].fillna(med_fare)

# Tugas
# Mengisi nilai kosong
# Kita juga harus mengisi nilai yang hilang untuk kolom Embarked dan Fare.

# Untuk Embarked, kebanyakan orang dari Titanic berangkat dari Southampton/S, sehingga kita dapat mengisinya dengan S saja. Ini lebih baik daripada membiarkan datanya kosong.

# Untuk Fare, kita tahu bahwa Fare sangat berkaitan dengan Kelas Penumpang, Jumlah Parent/Children, dan Jumlah Sibling/Spouse. Sehingga kita dapat mengisinya dengan nilai tengah dari orang yang berada di grup tersebut.