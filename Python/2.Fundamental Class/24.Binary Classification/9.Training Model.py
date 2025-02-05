#Kode program sebelumnya
import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import train_test_split

pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/cth_churn_analysis_train.xlsx')
df.drop('ID_Customer', axis=1, inplace=True)
df.drop('harga_per_bulan', axis=1, inplace=True)
df.drop('jumlah_harga_langganan', axis=1, inplace=True)

y = df.pop('churn').to_list()
y = [1 if label == 'Yes' else 0 for label in y]

labelers = {}
column_categorical_non_binary = []
for col in df.select_dtypes(include=['object']):
    if len(df[col].unique()) == 2:
        labelers[col] = LabelEncoder()
        df[col] = labelers[col].fit_transform(df[col])
    else:
        column_categorical_non_binary.append(col)

df = pd.get_dummies(df, columns=column_categorical_non_binary)

X = df.to_numpy()

X_train, X_test, y_train, y_test = train_test_split(X,y, test_size=0.1, random_state=23)

#untuk melakukan proses klasifikasi menggunakan algoritma DecisionTree kita dapat mengimport object 'DecisionTreeClassifier' pada modul 'tree' milik library scikit-learn
from sklearn.tree import DecisionTreeClassifier
 
#potongan kode ini dapat kita gunakan untuk menginisialisasi model dengan default parameter yang telah disediakan oleh library perhatikan bahwa parameter random_state hanya digunakan untuk reproducibility seperti layaknya pada fungsi train_test_split
model = DecisionTreeClassifier(random_state=57)
 
#meminta model untuk melatih dirinya menggunakan data X_train dan y_train yang telah disiapkan
print("Memulai melatih 'model'.")
model.fit(X_train,y_train)
print("Selesai melatih 'model'.")

