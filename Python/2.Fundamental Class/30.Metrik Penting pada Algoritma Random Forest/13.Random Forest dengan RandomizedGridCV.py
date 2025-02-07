#Kode sebelumnya
import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from pprint import pprint

dataset_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

dataset_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0], inplace=True)

dataset_credit_scoring['rata_rata_overdue'].replace({'0 - 30 days':1, '31 - 45 days':2, '46 - 60 days':3, '61 - 90 days':4, '> 90 days':5}, inplace=True)

X = dataset_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue']).values
y = dataset_credit_scoring['risk_rating'].values

X1 = dataset_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue', 'durasi_pinjaman_bulan']).values

X_train, X_test, y_train, y_test = train_test_split(X1, y, test_size=0.3, random_state=0)

n_estimators = list(np.linspace(200, 2000, num=100, dtype=np.int32))

max_features = ['auto', 'sqrt']
 
max_depth = list(np.linspace(10, 110, num=11, dtype=np.int32))
max_depth.append(None)
 
min_samples_split = [2, 5, 10]
 
min_samples_leaf = [1, 2, 4]
 
bootstrap = [True, False]
 
random_grid = {'n_estimators': n_estimators,
               'max_features': max_features,
               'max_depth': max_depth,
               'min_samples_split': min_samples_split,
               'min_samples_leaf': min_samples_leaf,
               'bootstrap': bootstrap}

#Random Forest
rfc = RandomForestClassifier(criterion='entropy', random_state=42)

#Import RandomizedSearchCV
from sklearn.model_selection import RandomizedSearchCV

#Menggunakan random grid untuk mencari hyperparameters terbaik 
rf_random = RandomizedSearchCV(estimator=rfc, param_distributions=random_grid, n_iter=10, cv=3, verbose=2, random_state=0)

#Fit the random search model
rf_random.fit(X_train, y_train)

#Tampilkan parameter terbaik
print('\nParameter terbaik:')
pprint(rf_random.best_params_)