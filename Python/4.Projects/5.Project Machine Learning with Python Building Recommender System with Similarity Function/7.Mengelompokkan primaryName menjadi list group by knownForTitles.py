import pandas as pd
import numpy as np
pd.set_option('display.max_columns', None)

name_df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/actor_name.csv')
name_df = name_df[['nconst','primaryName','knownForTitles']]
name_df['knownForTitles'] = name_df['knownForTitles'].apply(lambda x: x.split(','))

df_uni = []
for x in ['knownForTitles']:
    idx = name_df.index.repeat(name_df['knownForTitles'].str.len())
    df1 = pd.DataFrame({
        x: np.concatenate(name_df[x].values)
    })
    df1.index = idx
    df_uni.append(df1)

df_concat = pd.concat(df_uni, axis=1)
unnested_df = df_concat.join(name_df.drop(['knownForTitles'], 1), how='left')
unnested_df = unnested_df[name_df.columns.tolist()]

unnested_drop = unnested_df.drop(['nconst'], axis=1)

#menyiapkan bucket untuk dataframe
df_uni = []

for col in ['primaryName']:
    #agregasi kolom PrimaryName sesuai group_col yang sudah di define di atas
    dfi = unnested_drop.groupby(['knownForTitles'])[col].apply(list)
    #Lakukan append
    df_uni.append(dfi)
df_grouped = pd.concat(df_uni, axis=1).reset_index()
df_grouped.columns = ['knownForTitles','cast_name']
print(df_grouped)

# Tugas
# Selanjutnya, kita akan melakukan grouping kembali pada kolom player karena yang kita inginkan adalah level movie untuk melakukan movie recommendation

