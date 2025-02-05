import pandas as pd
dataset = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/pythonTutorial/online_raw.csv')
dataset.fillna(dataset.mean(), inplace = True)

from sklearn.preprocessing import LabelEncoder
LE = LabelEncoder()
dataset['Month'] = LE.fit_transform(dataset['Month'])
LE = LabelEncoder()
dataset['VisitorType'] = LE.fit_transform(dataset['VisitorType'])
X = dataset.drop(['Revenue'], axis = 1)
y = dataset['Revenue']

from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.2, random_state = 0)

from sklearn.tree import DecisionTreeClassifier
# Call the classifier
model=DecisionTreeClassifier()
# Fit the classifier to the training data
model =model.fit(X_train,y_train)

# Tugas
# egini, sebagai contoh, kita akan menggunakan Decision Tree. Kita hanya perlu memanggil fungsi DecisionTreeClassifier() yang kita namakan “model”. Kemudian menggunakan fungsi .fit() dan X_train, y_train untuk melatih classifier tersebut dengan training dataset,