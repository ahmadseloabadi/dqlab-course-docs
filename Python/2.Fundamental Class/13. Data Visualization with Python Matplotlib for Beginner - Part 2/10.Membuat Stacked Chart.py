import datetime
import pandas as pd
import matplotlib.pyplot as plt
dataset = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/retail_raw_reduced.csv')
dataset['order_month'] = dataset['order_date'].apply(lambda x: datetime.datetime.strptime(x, "%Y-%m-%d").strftime('%Y-%m'))
dataset['gmv'] = dataset['item_price']*dataset['quantity']
dataset_dki_q4 = dataset[(dataset['province']=='DKI Jakarta') & (dataset['order_month'] >= '2019-10')]

dataset_dki_q4.groupby(['order_month', 'city'])['gmv'].sum().sort_values(ascending=False).unstack().plot(kind='bar', stacked=True)

plt.title('GMV Per Month, Breakdown by City\nDKI Jakarta in Q4 2019',
          loc='center', pad=30, fontsize=15, color='blue')

plt.xlabel('Order Month', fontsize=12)
plt.ylabel('Total Amount (in Billions)', fontsize=12)

plt.legend(bbox_to_anchor=(1, 1), shadow=True, ncol=1, title='City')

plt.ylim(ymin=0)

labels, locations = plt.yticks()
plt.yticks(labels, (labels / 1000000000).astype(int))

plt.xticks(rotation=0)
plt.tight_layout()
plt.show()
