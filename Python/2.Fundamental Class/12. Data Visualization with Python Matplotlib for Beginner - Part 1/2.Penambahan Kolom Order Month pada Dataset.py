import pandas as pd
import datetime

dataset = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/retail_raw_reduced.csv')

dataset['order_month']=dataset['order_date'].apply(lambda x:datetime.datetime.strptime(x,'%Y-%m-%d').strftime('%Y-%m'))
print(dataset.head())