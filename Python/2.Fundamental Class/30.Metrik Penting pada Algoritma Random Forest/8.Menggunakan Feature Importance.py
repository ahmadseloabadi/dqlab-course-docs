#Kode sebelumnya
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier

dataset_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

dataset_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0], inplace=True)

dataset_credit_scoring['rata_rata_overdue'].replace({'0 - 30 days':1, '31 - 45 days':2, '46 - 60 days':3, '61 - 90 days':4, '> 90 days':5}, inplace=True)

X = dataset_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue']).values
y = dataset_credit_scoring['risk_rating'].values

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=0)

rfc = RandomForestClassifier(criterion='entropy', random_state=42)
model = rfc.fit(X_train, y_train)

#mendapatkan importance
importance = model.feature_importances_

#nama feature
feature_names = dataset_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue']).columns

#summarize feature importance
for f, fi in zip(feature_names, importance):
	print('Feature: %24s, Score: %.5f' % (f, fi))

# Baiklah, kupikir sampai di sini sudah cukup aku mempelajari ulang konsep. Akan lebih baik aku kembali mengerjakan kasus tadi sembari mempraktikkan fitur yang sudah aku pelajari, yakni menggunakan feature importance dan melakukan hyperparameters tuning agar hasil yang didapatkan lebih optimal.

