#Kode sebelumnya
import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import RandomizedSearchCV

# Baca dataset
dataset_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

dataset_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0], inplace=True)
dataset_credit_scoring['rata_rata_overdue'].replace({'0 - 30 days':1, '31 - 45 days':2, '46 - 60 days':3, '61 - 90 days':4, '> 90 days':5}, inplace=True)

#Hapus kolom - kolom yang tidak digunakan sebagai variabel independen. Kolom yang bukan variabel independen adalah kode kontrak, risk rating, rata rata overdue, dan durasi_pinjaman_bulan
X = dataset_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue', 'durasi_pinjaman_bulan']).values
y = dataset_credit_scoring['risk_rating'].values

#Gunakan pembagian data training dan testing dengan 80:20
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=0)

#Buat base model dengan menggunakan Random Forest
rfc = RandomForestClassifier(criterion='entropy', random_state=42)
base_model = rfc.fit(X_train, y_train)

#Fungsi untuk mengevaluasi model berdasarkan data testing
def evaluate(model, X_test, y_test):
    predictions = model.predict(X_test)
    errors = abs(predictions - y_test)
    mape = 100 * np.mean(errors / y_test)
    accuracy = 100 - mape
    print('Model Performance')
    print('Average Error: %.4f degrees.' % (np.mean(errors),))
    print('Accuracy = %.2f%%.' % (accuracy,))

#Evaluasi base model
print('Base Model:')
print('-----------')
evaluate(base_model, X_test, y_test)

#Terapkan hyperparameter dengan nilai masing-masing parameter
#1. jumlah pohon pada random forest
n_estimators = list(np.linspace(200, 2000, num=100, dtype=np.int32))

#2. jumlah fitur yang dipertimbangkan untuk setiap pemisahan (split)
max_features = ['auto', 'sqrt']

#3. jumlah maksimum level pada setiap pohon
max_depth = list(np.linspace(10, 110, num=11, dtype=np.int32))
max_depth.append(None)

#4. jumlah minimum sample yang dibutuhkan untuk memisahkan node
min_samples_split = [2, 5, 10]

#5. jumlah minimum sample yang dibutuhkan untuk setiap leaf node
min_samples_leaf = [1, 2, 4]

#6. metode untuk memilih sampel untuk training setiap pohon
bootstrap = [True, False]

#membuat grid berdasarkan parameter no. 1 s/d 6
grid = {'n_estimators': n_estimators,
        'max_features': max_features,
        'max_depth': max_depth,
        'min_samples_split': min_samples_split,
        'min_samples_leaf': min_samples_leaf,
        'bootstrap': bootstrap}

#Estimator untuk RandomizedSearchCV menggunakan Random Forest
rfc = RandomForestClassifier(criterion='entropy', random_state=42)

#Terapkan RandomizedSearchCV
rf_random = RandomizedSearchCV(estimator=rfc, param_distributions=grid, n_iter=10, cv=3, verbose=0, random_state=0)
rf_random.fit(X_train, y_train)

#Evaluasi Best Model
best_model = rf_random.best_estimator_
print('\n\nBest Hypertuned Model:')
print('----------------------')
evaluate(best_model, X_test, y_test)

# kesimpulan
# Tadi itu aku menggunakan dua metrik untuk meningkatkan kinerja model yaitu  feature importance untuk mengetahui dan memilih fitur berdasarkan skor, serta melakukan hyperparameters tuning untuk mecari pengaturan yang pas bisa juga mengoptimalkan kinerja model. Aku memberi catatan pada diri sendiri jika kedua metrik tersebut akan sangat berguna saat ada dataset yang memiliki variabel  banyak dan tidak semua variabelnya memiliki hubungan   kuat dengan target. 

# Itulah best practices yang bisa aku pelajari dari pekerjaanku hari ini. Harapanku kedepannya, tidak ada lagi kebingungan ketika menghadapi kasus serupa karena aku sudah paham kedua model metrik tersebut! Jadi, harusnya aku tidak butuh waktu lebih lama lagi dalam pengolahan data. 