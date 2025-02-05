#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/cth_churn_analysis_train.xlsx')
df.drop('ID_Customer', axis=1, inplace=True)
df.drop('harga_per_bulan', axis=1, inplace=True)
df.drop('jumlah_harga_langganan', axis=1, inplace=True)

y = df.pop('churn').to_list()
y = [1 if label == 'Yes' else 0 for label in y]

from sklearn.preprocessing import LabelEncoder
labelers = {}
column_categorical_non_binary = []
for col in df.select_dtypes(include=['object']):
    if len(df[col].unique()) == 2:
        labelers[col] = LabelEncoder()
        df[col] = labelers[col].fit_transform(df[col])
    else:
        column_categorical_non_binary.append(col)

df = pd.get_dummies(df, columns=column_categorical_non_binary)

#merepresentasikan seluruh kolom dalam df sebagai matrik dan menampungnya dalam variabel X.
X = df.to_numpy()
 
#menampilkan informasi dimensi dari variabel X
print("Dimensi dari variabel X:",X.shape)

# Catatan Sunyi untuk Senja: “Nilai dimensi (499, 10) dari variabel X menunjukkan bahwa terdapat 499 data dan 10 properti untuk setiap data.” 

