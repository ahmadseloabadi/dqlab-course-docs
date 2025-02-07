#Import library pandas
import pandas as pd
data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/RFM_customer.csv", encoding='utf8')

#Drop kolom customer_id
RFM_km = data.drop(["customer_id"], axis=1)

#Import library matplotlib.pyplot
import matplotlib.pyplot as plt

#Import library seaborn
import seaborn as sns

#Menampilkan boxplot data frequency, recency, dan monetary
fig, ax = plt.subplots(3, 1, figsize=(8,5))
sns.boxplot(RFM_km['frequency'], ax=ax[0])
sns.boxplot(RFM_km['recency'], ax=ax[1])
sns.boxplot(RFM_km['monetary'], ax=ax[2])
plt.tight_layout()
plt.show()

