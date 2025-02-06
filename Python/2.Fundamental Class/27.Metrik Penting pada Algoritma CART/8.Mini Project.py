#Impor library scikit learn & pandas
from sklearn import metrics
import pandas as pd

#Nilai aktual: 1 untuk Positif dan 0 untuk Negatif
y_actual = [1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0]
 
#Nilai hasil prediksi:
y_predict = [1,0,0,0,1,1,1,1,1,1,0,0,0,0,0,1,1,0,0,0]
 
#Confusion matrix untuk nilai aktual dan prediksi.
matrix = metrics.confusion_matrix(y_actual, y_predict, labels=[1,0])
print('Confusion matrix:')
print(matrix)
print()
 
#Hasil perhitungan TP, FN, FP, dan TN dari confusion matrix
TP, FN, FP, TN = metrics.confusion_matrix(y_actual, y_predict, labels=[1,0]).reshape(-1)
print('True Positive  =', TP)
print('False Negative =', FN)
print('False Positive =', FP)
print('True Negative  =', TN)
print()
 
#Hitung nilai akurasi dari model
accuracy = metrics.accuracy_score(y_actual, y_predict)
print('Accuracy =', accuracy)
 
#Hitung nilai Precision
precision = metrics.precision_score(y_actual, y_predict)
print('Precision =', precision)
 
#Hitung nilai Recall
recall = metrics.recall_score(y_actual, y_predict)
print('Recall =', recall)
 
#Hitung F1-Score
f1 = metrics.f1_score(y_actual, y_predict)
print('F1-Score =', f1)

# Tugas
# Walaupun model Decision Tree Classifier yang aku buat sudah layak digunakan, aku ingin memahami cara mengukur kinerja sebuah model klasifikasi menggunakan Confusion Matrix. Maka, aku mengambil sebuah mini project untuk kukerjakan.

# Dalam project ini, aku telah memiliki sebuah hasil prediksi model klasifikasi biner yang diberikan oleh

# y_predict = [1,0,0,0,1,1,1,1,1,1,0,0,0,0,0,1,1,0,0,0]
# dan nilai aktualnya diberikan oleh

# y_actual = [1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0]
# Aku ingin menentukan

# confusion matrik untuk nilai aktual dan prediksi
# true positive (TP)
# false negative (FN)
# false positive (FP)
# true negative (TN)
# akurasi model
# skor precision
# skor recall
# skor f1