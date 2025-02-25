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
    institute = ''.join(list(map(lambda word: word[0], col['institute'].lower().split()))) #Singkatan dari nama perusahaan dalam lowercase

    if 'Universitas' in col['institute']:
        if len(col['country'].split()) > 1: #Kondisi untuk mengecek apakah jumlah kata dari country lebih dari 1
            country = ''.join(list(map(lambda word: word[0], col['country'].lower().split())))
        else:
            country = col['country'][:3].lower()
        return "%s%s@%s.ac.%s"%(first_name_lower,last_name_lower,institute,country)

    return "%s%s@%s.com"%(first_name_lower,last_name_lower,institute)

df_participant['email'] = df_participant.apply(func, axis=1)

# Tugas
# Setelah dilihat kembali dari data peserta yang dimiliki, ternyata ada satu informasi yang penting namun belum tersedia, yaitu email.

# Anda sebagai Data Engineer diminta untuk menyediakan informasi email dari peserta dengan aturan bahwa format email sebagai berikut:

# Format email:
# xxyy@aa.bb.[ac/com].[cc]

# Keterangan:
# xx -> nama depan (first_name) dalam lowercase
# yy -> nama belakang (last_name) dalam lowercase
# aa -> nama institusi

# Untuk nilai bb, dan cc mengikuti nilai dari aa. Aturannya:
# - Jika institusi nya merupakan Universitas, maka
#   bb -> gabungan dari huruf pertama pada setiap kata dari nama Universitas dalam lowercase
#   Kemudian, diikuti dengan .ac yang menandakan akademi/institusi belajar dan diikuti dengan pattern cc
# - Jika institusi bukan merupakan Universitas, maka
#   bb -> gabungan dari huruf pertama pada setiap kata dari nama Universitas dalam lowercase
#   Kemudian, diikuti dengan .com. Perlu diketahui bahwa pattern cc tidak berlaku pada kondisi ini

# cc -> merupakan negara asal peserta, adapun aturannya:
# - Jika banyaknya kata pada negara tersebut lebih dari 1 maka ambil singkatan dari negara tersebut dalam lowercase
# - Namun, jika banyaknya kata hanya 1 maka ambil 3 huruf terdepan dari negara tersebut dalam lowercase

# Contoh:
#   Nama depan: Citra
#   Nama belakang: Nurdiyanti
#   Institusi: UD Prakasa Mandasari
#   Negara: Georgia
#   Maka,Email nya: citranurdiyanti@upm.geo
#   -----------------------------------
#   Nama depan: Aris
#   Nama belakang: Setiawan
#   Institusi: Universitas Diponegoro
#   Negara: Korea Utara
#   Maka, Email nya: arissetiawan@ud.ac.ku