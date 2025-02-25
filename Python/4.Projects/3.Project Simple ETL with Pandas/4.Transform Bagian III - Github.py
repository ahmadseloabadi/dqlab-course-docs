import pandas as pd
df_participant = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/dqthon-participants.csv')
df_participant['postal_code'] = df_participant['address'].str.extract(r'(\d+)$')
df_participant['city'] = df_participant['address'].str.extract(r'(?<=\n)(\w.+)(?=,)') 

df_participant['github_profile'] = 'https://github.com/' + df_participant['first_name'].str.lower() + df_participant['last_name'].str.lower()

# teori
# Salah satu parameter untuk mengetahui proyek apa saja yang pernah dikerjakan oleh peserta yaitu dari git repository mereka.

# Pada kasus ini kita menggunakan profil github sebagai parameternya. Tugas Anda yaitu membuat kolom baru bernama github_profile yang merupakan link profil github dari peserta.

# Diketahui bahwa profil github mereka merupakan gabungan dari first_name dan last_name yang sudah di-lowercase. 