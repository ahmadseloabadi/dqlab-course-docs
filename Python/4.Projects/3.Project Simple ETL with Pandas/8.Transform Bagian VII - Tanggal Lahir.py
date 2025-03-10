import pandas as pd
df_participant = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/dqthon-participants.csv')
df_participant['postal_code'] = df_participant['address'].str.extract(r'(\d+)$')
df_participant['city'] = df_participant['address'].str.extract(r'(?<=\n)(\w.+)(?=,)') 
df_participant['github_profile'] = 'https://github.com/' + df_participant['first_name'].str.lower() + df_participant['last_name'].str.lower()
df_participant['cleaned_phone_number'] = df_participant['phone_number'].str.replace(r'^(\+62|62)', '0')
df_participant['cleaned_phone_number'] = df_participant['cleaned_phone_number'].str.replace(r'[()-]', '')
df_participant['cleaned_phone_number'] = df_participant['cleaned_phone_number'].str.replace(r'\s+', '')

def func(col):
    abbrev_name = "%s%s"%(col['first_name'][0],col['last_name'][0])
    country = col['country']
    abbrev_institute = '%s'%(''.join(list(map(lambda word: word[0], col['institute'].split()))))
    return "%s-%s-%s"%(abbrev_name,country,abbrev_institute)
df_participant['team_name'] = df_participant.apply(func, axis=1)

def func(col):
    first_name_lower = col['first_name'].lower()
    last_name_lower = col['last_name'].lower()
    institute = ''.join(list(map(lambda word: word[0], col['institute'].lower().split())))
    
    if 'Universitas' in col['institute']:
        if len(col['country'].split()) > 1:
            country = ''.join(list(map(lambda word: word[0], col['country'].lower().split())))
        else:
            country = col['country'][:3].lower()
        return "%s%s@%s.ac.%s"%(first_name_lower,last_name_lower,institute,country)
        
    return "%s%s@%s.com"%(first_name_lower,last_name_lower,institute)
    
df_participant['email'] = df_participant.apply(func, axis=1)


df_participant['birth_date'] = pd.to_datetime(df_participant['birth_date'], format='%d %b %Y')

# Tugas
# MySQL merupakan salah satu database yang sangat populer dan digunakan untuk menyimpan data berupa tabel, termasuk data hasil pengolahan yang sudah kita lakukan ini nantinya bisa dimasukkan ke MySQL.

# Meskipun begitu, ada suatu aturan dari MySQL terkait format tanggal yang bisa mereka terima yaitu YYYY-MM-DD dengan keterangan:

# YYYY: 4 digit yang menandakan tahun
# MM: 2 digit yang menandakan bulan
# DD: 2 digit yang menandakan tanggal
# Contohnya yaitu: 2021-04-07

# Jika kita lihat kembali pada kolom tanggal lahir terlihat bahwa nilainya belum sesuai dengan format DATE dari MySQL

# (Lihat lebih detail di sini.).

# Oleh karena itu, lakukanlah formatting terhadap kolom birth_date menjadi YYYY-MM-DD dan simpan di kolom yang sama.