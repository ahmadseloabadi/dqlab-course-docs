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

#import CountVectorizer 
from sklearn.feature_extraction.text import CountVectorizer

#definisikan CountVectorizer dan mengubah soup tadi menjadi bentuk vector
count = CountVectorizer(stop_words='english')
count_matrix = count.fit_transform(feature_df['soup'])

print(count)
print(count_matrix.shape)


# Tugas
# CountVectorizer adalah tipe paling sederhana dari vectorizer. Supaya lebih mudah akan dijelaskan melalui contoh di bawah ini:

# bayangkan terdapat 3 text A, B, dan C, dimana text nya adalah

# A: The Sun is a star
# B: My Love is like a red, red rose
# C : Mary had a little lamb
# Sekarang kita harus konversi text-text ini menjadi bentuk vector menggunakan CountVectorizer. Langkah-langkahnya adalah: menghitung ukuran dari vocabulary. Vocabulary adalah jumlah dari kata unik yang ada dari text tersebut.


# Oleh sebab itu, vocabulary dari set ketiga text tersebut adalah: the, sun, is, a, star, my, love, like, red, rose, mary, had, little, lamb. Secara total, ukuran vocabulary adalah 14.


# Tetapi, biasanya kita tidak include stop words (english), seperti as, is, a, the, dan sebagainya karena itu adalah kata yang sudah common sekali.


# Dengan mengeliminasi stop words, maka clean size vocabulary kita adalah like, little, lamb, love, mary, red, rose, sun, star (sorted alphabet ascending)
# Maka, dengan menggunakan CountVectorizer, maka hasil yang kita dapatkan adalah sebagai berikut:


# A : (0,0,0,0,0,0,0,1,1), terdiri atas sun:1, star:1
# B : (1,0,0,1,0,2,1,0,0), terdiri atas like:1, love:1, red:2, rose:1
# C : (0,1,1,0,1,0,0,0,0), terdiri atas little:1, lamb:1, mary:1