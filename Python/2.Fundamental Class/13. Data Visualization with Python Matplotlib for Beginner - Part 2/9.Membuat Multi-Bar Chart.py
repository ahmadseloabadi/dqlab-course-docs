import datetime
import pandas as pd
import matplotlib.pyplot as plt
dataset = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/retail_raw_reduced.csv')
dataset['order_month'] = dataset['order_date'].apply(lambda x: datetime.datetime.strptime(x, "%Y-%m-%d").strftime('%Y-%m'))
dataset['gmv'] = dataset['item_price']*dataset['quantity']
dataset_dki_q4 = dataset[(dataset['province']=='DKI Jakarta') & (dataset['order_month'] >= '2019-10')]

dataset_dki_q4.groupby(['city', 'order_month'])['gmv'].sum().unstack().plot(kind='bar')

plt.title('GMV Per City, Breakdown by Month\nDKI Jakarta in Q4 2019',
          loc='center', pad=30, fontsize=15, color='blue')

plt.xlabel('Province', fontsize=12)
plt.ylabel('Total Amount (in Billions)', fontsize=12)

plt.legend(bbox_to_anchor=(1, 1), shadow=True, title='Month')

plt.ylim(ymin=0)

labels, locations = plt.yticks()
plt.yticks(labels, (labels / 1000000000).astype(int))

plt.xticks(rotation=45)
plt.tight_layout()
plt.show()
