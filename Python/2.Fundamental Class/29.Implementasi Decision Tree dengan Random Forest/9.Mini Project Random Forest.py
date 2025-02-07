#mengimport library Pandas
import pandas as pd

#membaca dataset credit_scoring_dqlab dari file excel
df_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

#mengubah data kpr_aktif menjadi tipe integer: 'YA' = 1 dan 'TIDAK' = 0 
df_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0], inplace=True)

#Label Encoding rata_rata_overdue , untuk menghilangkan value string, sehingga bisa dibuat dalam bentuk numeric array, dan tidak error saat membuat modelnya
df_credit_scoring['rata_rata_overdue'].replace({
    '0 - 30 days':1,
    '31 - 45 days':2,
    '46 - 60 days':3,
    '61 - 90 days':4,
    '> 90 days':5
}, inplace=True)

#untuk X (independent variables), data yang dimasukkan semua persyaratan untuk membuat risk_rating (dependent variable), tidak memerlukan kode_kontrak. Selain itu rata_rata_overdue juga dikeluarkan karena merupakan transformasi numerik dari risk_rating sehingga kolom kode_kontrak, rata_rata_overdue dan risk_rating dibuang
X = df_credit_scoring.drop(columns=['kode_kontrak','risk_rating', 'rata_rata_overdue']).values

#untuk y (target/dependent variable) adalah target nilai yang harus dibuat sistem ketika membaca data X isinya adalah kolom risk_rating
y = df_credit_scoring['risk_rating'].values

#membagi data training dan data testing, dimana training 70% dan testing 30%
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=0)

#membangun Random Forest Classifier
from sklearn.ensemble import RandomForestClassifier

#Entropy controls how a Decision Tree decides to split the data. It actually affects how a Decision Tree draws its boundaries. random_state digunakan untuk menentukan jumlah bootstrapping sample yang akan dilakukan popular random_state values are 0 and 42
rfc = RandomForestClassifier(criterion='entropy', random_state=42)
rfc.fit(X_train, y_train)

from sklearn.metrics import f1_score

#mengevaluasi data training
rfc_pred_train = rfc.predict(X_train)
print('Training Set Evaluation F1-Score:', f1_score(y_train, rfc_pred_train, average='micro'))

#mengevaluasi data testing
rfc_pred_test = rfc.predict(X_test)
print('Testing Set Evaluation F1-Score:', f1_score(y_test, rfc_pred_test, average='micro'))