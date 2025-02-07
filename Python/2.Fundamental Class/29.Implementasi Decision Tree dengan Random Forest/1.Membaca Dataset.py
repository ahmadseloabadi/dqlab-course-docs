#mengimport library Pandas
import pandas as pd
pd.set_option('display.max_column', 20)

#membaca dataset credit_scoring_dqlab dari file excel
df_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

print(df_credit_scoring.head())