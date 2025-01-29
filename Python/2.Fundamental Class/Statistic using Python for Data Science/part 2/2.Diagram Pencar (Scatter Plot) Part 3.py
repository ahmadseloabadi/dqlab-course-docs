import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
raw_data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/dataset_statistic.csv", sep=';')
plt.clf()

# visualisasi diagram pencar untuk variabel 'Pendapatan' dan 'Total' menggunakan 'plt.scatter' dari matplotlib.pyplot
plt.scatter(x='Pendapatan', y='Total', data=raw_data)
plt.xlabel('Pendapatan')
plt.ylabel('Total')
plt.tight_layout()
plt.show()