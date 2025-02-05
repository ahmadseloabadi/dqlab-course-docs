#load dataset
import pandas as pd
housing = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/pythonTutorial/housing_boston.csv')
#Data rescaling
from sklearn import preprocessing
data_scaler = preprocessing.MinMaxScaler(feature_range=(0,1))
housing[['RM','LSTAT','PTRATIO','MEDV']] = data_scaler.fit_transform(housing[['RM','LSTAT','PTRATIO','MEDV']])
# getting dependent and independent variables
X = housing.drop(['MEDV'], axis = 1)
y = housing['MEDV']
# checking the shapes
print('Shape of X:', X.shape)
print('Shape of y:', y.shape)

# splitting the data
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.3, random_state = 0)
# checking the shapes  
print('Shape of X_train :', X_train.shape)
print('Shape of y_train :', y_train.shape)
print('Shape of X_test :', X_test.shape)
print('Shape of y_test :', y_test.shape)

##import regressor from Scikit-Learn
from sklearn.linear_model import LinearRegression
# Call the regressor
reg = LinearRegression()
# Fit the regressor to the training data  
reg = reg.fit(X_train,y_train)
# Apply the regressor/model to the test data  
y_pred = reg.predict(X_test)

# Tugas Praktek
# “Oke, saya tahu kamu sudah enggak sabar. Sebelumnya kamu membuat modellingnya, saya jelaskan prosedur dan library yang tepat untuk digunakan ya, nanti saya akan email detail intruksinya.”

# Aku pun menunggu email dari Senja. Setelah beberapa menit, pesan yang kutunggu akhirnya muncul:

# Pisahkan dataset ke dalam Feature dan Label, gunakan fungsi .drop(). Pada dataset ini, label/target adalah variabel MEDV
# Checking dan print jumlah data setelah Dataset pisahkan ke dalam Feature dan Label, gunakan .shape()
# Bagi dataset ke dalam Training dan test dataset, 70% data digunakan untuk training dan 30% untuk testing, gunakan fungsi train_test_split() , dengan random_state = 0
# Checking dan print kembali jumlah data dengan fungsi .shape()
# Import LinearRegression dari sklearn.linear_model
# Deklarasikan  LinearRegression regressor dengan nama reg
# Fit regressor ke training dataset dengan .fit(), dan gunakan .predict() untuk memprediksi nilai dari testing dataset.