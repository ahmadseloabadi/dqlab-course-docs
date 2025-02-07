#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df_credit_scoring = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx')

df_credit_scoring['kpr_aktif'].replace(['YA', 'TIDAK'], [1, 0], inplace=True)
df_credit_scoring['rata_rata_overdue'].replace({
   '0 - 30 days':1, 
   '31 - 45 days':2, 
   '46 - 60 days':3, 
   '61 - 90 days':4, 
   '> 90 days':5
}, inplace=True)

#untuk X (independent variables), data yang dimasukkan semua persyaratan untuk membuat risk_rating (dependent variable), tidak memerlukan kode_kontrak. Selain itu rata_rata_overdue juga dikeluarkan karena merupakan transformasi numerik dari risk_rating sehingga kolom kode_kontrak, rata_rata_overdue dan risk_rating dibuang
X = df_credit_scoring.drop(columns=['kode_kontrak', 'risk_rating', 'rata_rata_overdue']).values
print('Ukuran varibel independen X: ', X.shape)

#untuk y (target/dependent variable) adalah target nilai yang harus dibuat sistem ketika membaca data X isinya adalah kolom risk_rating
y = df_credit_scoring['risk_rating'].values
print('Ukuran varibel dependen y: ', y.shape)

# Tugas
# “Sudah aku konversi datanya. Langkah selanjutnya apa, nih?” tanyaku sambil memperlihatkan Sunyi tabel-tabel di atas.

# Setelah menyimak hasil output, Sunyi memberitahu langkah selanjutnya, “Sekarang kita perlu membuat variabel independen (X) dan variabel dependen (y). Ngerti maksudnya?”

# “Ngerti, dong. Variabel independen adalah variabel yang mempengaruhi target sedangkan variabel dependen adalah target atau kelas,” jawabku dengan mantap.

# “Betul! Untuk variabel X, kolom ‘kode_kontrak’ perlu dihilangkan karena tidak diperlukan dan kolom ‘risk_rating’  juga dihilangkan karena kolom tersebut merupakan target. Selain itu, kolom ‘rata_rata_overdue’ juga tidak digunakan sebagai variabel independen,” papar Sunyi.

# Sementara itu variabel dependen y adalah variabel di kolom 'risk_rating'.