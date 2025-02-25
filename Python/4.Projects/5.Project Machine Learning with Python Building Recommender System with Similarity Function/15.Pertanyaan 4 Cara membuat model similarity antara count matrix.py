import pandas as pd
import numpy as np
pd.set_option('display.max_columns', None)

movie_rating_df = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/movie_rating_df.csv')

director_writers = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/directors_writers.csv')
director_writers['director_name'] = director_writers['director_name'].apply(lambda row: row.split(','))
director_writers['writer_name'] = director_writers['writer_name'].apply(lambda row: row.split(','))

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
df_uni = []
for col in ['primaryName']:
    dfi = unnested_drop.groupby(['knownForTitles'])[col].apply(list)
    df_uni.append(dfi)
df_grouped = pd.concat(df_uni, axis=1).reset_index()
df_grouped.columns = ['knownForTitles','cast_name']

base_df = pd.merge(df_grouped, movie_rating_df, left_on='knownForTitles', right_on='tconst', how='inner')
base_df = pd.merge(base_df, director_writers, left_on='tconst', right_on='tconst', how='left')

base_drop = base_df.drop(['knownForTitles'], axis=1)
base_drop['genres'] = base_drop['genres'].fillna('Unknown')
base_drop[['director_name','writer_name']] = base_drop[['director_name','writer_name']].fillna('unknown')
base_drop['genres'] = base_drop['genres'].apply(lambda x: x.split(','))

base_drop2 = base_drop.drop(['tconst','isAdult','endYear','originalTitle'], axis=1)
base_drop2 = base_drop2[['primaryTitle','titleType','startYear','runtimeMinutes','genres','averageRating','numVotes','cast_name','director_name','writer_name']]
base_drop2.columns = ['title','type','start','duration','genres','rating','votes','cast_name','director_name','writer_name']

feature_df = base_drop2[['title','cast_name','genres','director_name','writer_name']]

def sanitize(x):
    try:
        if isinstance(x, list):
            return [i.replace(' ','').lower() for i in x]
        else:
            return [x.replace(' ','').lower()]
    except:
        print(x)
feature_cols = ['cast_name','genres','writer_name','director_name']

for col in feature_cols:
    feature_df[col] = feature_df[col].apply(sanitize)

def soup_feature(x):
    return ' '.join(x['cast_name']) + ' ' + ' '.join(x['genres']) + ' ' + ' '.join(x['director_name']) + ' ' + ' '.join(x['writer_name'])

feature_df['soup'] = feature_df.apply(soup_feature, axis=1)

from sklearn.feature_extraction.text import CountVectorizer

count = CountVectorizer(stop_words='english')
count_matrix = count.fit_transform(feature_df['soup'])

#Import cosine_similarity
from sklearn.metrics.pairwise import cosine_similarity

#Gunakan cosine_similarity antara count_matrix 
cosine_sim = cosine_similarity(count_matrix, count_matrix)

#print hasilnya
print(cosine_sim)

# Tugas
# Pada langkah ini, kita akan menghitung score cosine similarity dari setiap pasangan judul (berdasarkan semua kombinasi pasangan yang ada, dengan kata lain kita akan membuat 675 x 675 matrix, dimana cell di kolom i dan j menunjukkan score similarity antara judul i dan j. kita dapat dengan mudah melihat bahwa matrix ini simetris dan setiap elemen pada diagonal adalah 1, karena itu adalah similarity score dengan dirinya sendiri

 
# Cosine Similarity
# pada bagian ini, kita akan menggunakan formula cosine similarity untuk membuat model. Score cosine ini sangatlah berguna dan mudah untuk dihitung.

# formula untuk perhitungan cosine similarity antara 2 text, adalah sebagai berikut:

# $cosine(x,y)=\frac{x.y^T}{||x||.||y||}$
# output yang didapat antara range -1 sampai 1. Score yang hampir mencapai 1 artinya kedua entitas tersebut sangatlah mirip sedangkan score yang hampir mencapai -1 artinya kedua entitas tersebut adalah beda