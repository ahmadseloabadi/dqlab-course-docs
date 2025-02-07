import numpy as np
from pprint import pprint

#jumlah pohon pada random forest
n_estimators = list(np.linspace(200, 2000, num=100, dtype=np.int32))
 
#jumlah fitur yang dipertimbangkan untuk setiap pemisahan (split)
max_features = ['auto', 'sqrt']
 
#jumlah maksimum level pada setiap pohon
max_depth = list(np.linspace(10, 110, num=11, dtype=np.int32))
max_depth.append(None)
 
#jumlah minimum sample yang dibutuhkan untuk memisahkan node
min_samples_split = [2,5,10]
 
#jumlah minimum sample yang dibutuhkan untuk setiap leaf node
min_samples_leaf = [1,2,4]
 
#metode untuk memilih sampel untuk training setiap pohon
bootstrap = [True, False]
 
#membuat random grid
random_grid = {'n_estimators': n_estimators,
               'max_features': max_features,
               'max_depth': max_depth,
               'min_samples_split': min_samples_split,
               'min_samples_leaf': min_samples_leaf,
               'bootstrap': bootstrap}

pprint(random_grid)

# Tugas
# Setelah mengetahui semuanya berjalan lancar, aku pun mulai mengeksekusi penggunaan hyperparameters tuning untuk Random Forest yaitu RandomizedSearchCV.

# Aku akan membuat beberapa nilai pada hyperparameter

# Teori
# Berikut ini merupakan hyperparameter yang umum digunakan dalam algoritma random forest.
# n_estimators    :Jumlah pohon pada forest
# max_features    :Jumlah maksimum fitur yang dipertimbangkan untuk memisahkan node
# max_depth	    :Jumlah maksimum level pada setiap decision tree
# min_sample_split:Jumlah minimum data point yang ditempatkan pada sebuah node sebelum node dipisah
# min_sample_leaf :Jumlah minimum data point yang diizinkan pada setiap leaf node
# bootstrap	    :Metode sampling data point