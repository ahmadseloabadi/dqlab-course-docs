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
from sklearn.tree import DecisionTreeClassifier

# splitting the data
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.3, random_state = 0)

# Call the classifier
decision_tree = DecisionTreeClassifier()
# Fit the classifier to the training data
decision_tree = decision_tree.fit(X_train,y_train)

# evaluating the decision_tree performance
print('Training Accuracy :', decision_tree.score(X_train,y_train))
print('Testing Accuracy :', decision_tree.score(X_test,y_test))

# Tugas Praktek
# Dengan menggunakan dataset online_raw.csv dan diasumsikan sudah melakukan EDA dan pre-processing, aku akan membuat model machine learning dengan menggunakan decision tree :

# Import DecisionTreeClassifier dan panggil fungsi tersebut dengan nama decision_tree
# Split dataset ke dalam training & testing dataset dengan perbandingan 70:30, dengan random_state = 0
# Latih model dengan training feature (X_train) dan training target (y_train) menggunakan .fit()
# Evaluasi hasil model decision_tree yang sudah dilatih dengan testing feature (X_test) dan print nilai akurasi dari training dan testing dengan fungsi .score()