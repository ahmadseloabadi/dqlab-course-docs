from sklearn.ensemble import RandomForestClassifier
random_forest = RandomForestClassifier(criterion='gini', 
                                       n_estimators=1100,
                                       max_depth=5,
                                       min_samples_split=4,
                                       min_samples_leaf=5,
                                       max_features='auto',
                                       oob_score=True,
                                       random_state=50)
random_forest.fit(X_train, y_train)
from sklearn.model_selection import cross_val_score
scores = cross_val_score(random_forest, X_train, y_train, cv=10, scoring = "accuracy")
print("Scores:", scores)
print("Mean:", scores.mean())
print("Standard Deviation:", scores.std())

# Penjelasan
# Akurasi yang diperoleh melalui pemodelan tanpa feature engineering adalah 0.81258. Nilai ini lebih rendah 0.02 atau 2% dari pemodelan dengan penggunaan feature engineering.

# Ini artinya bahwa penggunaan feature engineering dapat menaikkan akurasi model. Karena, fitur turunan (fitur yang direkayasa) melalui teknik feature engineering ini memiliki dampak yang signifikan pada model yang dibangun. Denga kata lain, feature engineering merupakan hal yang terpenting dilakukan untuk meningkatkan performansi model machine learning.

# Note: Akurasi ini tidak absolut dan dapat berubah, tergantung dari banyak factor, termasuk dari parameter yang dimasukkan. Fitur yang kita buat pun dapat menjadi buruk juga tergantung tipe model yang digunakan.

# Kesimpulan
# Konklusi:

# Feature Engineering mengharuskan kita membuat banyak ide fitur dari data yang sudah ada.

# Biasanya yang dapat kita lakukan adalah, penggabungan (grouping), ekstraksi fitur (seperti Title yang didapat dari nama orang), dan masih banyak lagi.

# Jangan malas untuk melakukan feature engineering dan mencoba segala sesuatu yang ada di pikiran kita. Barangkali ini dapat meningkatkan akurasi model kita.