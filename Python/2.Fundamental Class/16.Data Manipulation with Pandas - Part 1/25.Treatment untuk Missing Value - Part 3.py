import pandas as pd
# Baca file "https://storage.googleapis.com/dqlab-dataset/datacovid19.csv"
df = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/datacovid19.csv")
# Cetak unique value pada kolom province_state
print("Unique value awal:\n", df['province_state'].unique())
# Ganti missing value dengan string "unknown_province_state"
df['province_state'] = df['province_state'].fillna('unknown_province_state')
# Cetak kembali unique value pada kolom province_state
print("Unique value setelah fillna:\n", df['province_state'].unique())

# Teori
# Sekarang, akan melakukan treatment ketiga untuk melakukan handle missing value pada dataframe. Treatment ini dilakukan dengan cara mengisi missing value dengan nilai lain, yang dapat berupa :

# nilai statistik seperti mean atau median
# interpolasi data
# text tertentu
 

# Akan mulai pada kolom yang missing yang tipe datanya adalah berupa object. Kolom tersebut adalah province_state, karena tidak tahu secara persis province_state mana yang dimaksud, bisa menempatkan string "unknown" sebagai substitusi missing value. Meskipun keduanya berarti sama-sama tidak tahu tetapi berbeda dalam representasi datanya.

# Untuk melakukan hal demikian dapat menggunakan method .fillna()

# Tugas Praktek:

# Lakukanlah dengan cara yang sama dengan yang telah dicontohkan di atas, tetapi isilah missing value dengan string "unknown_province_state".