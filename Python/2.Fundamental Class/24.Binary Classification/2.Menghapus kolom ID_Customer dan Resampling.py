#Kode program sebelumnya
import pandas as pd
pd.set_option('display.max_column', 20)

df = pd.read_excel('https://storage.googleapis.com/dqlab-dataset/cth_churn_analysis_train.xlsx')

#menghilangkan kolom 'ID_Customer' dari data frame dikarenakan kolom ini tidak relevan untuk dijadikan input dalam tugas klasifikasi (ID customer tidak mempengaruhi apakah customer akan lanjut berlangganan atau tidak
df.drop('ID_Customer', axis=1, inplace=True)
print(df['churn'].value_counts())

# Tugas
# Sunyi, sepertinya kolom “ID_Customer” perlu dihapus karena tidak relevan untuk dijadikan input dalam tugas klasifikasi. Coba pikirkan, tidak mungkin pelanggan berhenti atau lanjut berlangganan berdasarkan ID yang dimilikinya.”

# Sunyi berpikir sejenak, “Benar juga.”

# Kemudian, setelah berdiskusi dengan Senja, Sunyi memutuskan untuk menghapus kolom “ID_Customer”  dikarenakan ia merasa kolom ini tidak relevan untuk dijadikan input dalam tugas klasifikasi. Tidak mungkin costumer berhenti atau lanjut berlangganan berdasarkan ID yang dimilikinya. Untuk menghapus kolom “ID_Customer”,

# penejelasan
# Dari hasil potongan kode dikarenakan rasio kemunculan label “Yes” dan “No” pada kolom “churn” cukup berimbang atau nearly-balanced, sehingga dapat diperlakukan sebagai klasifikasi balanced.”

# Berdasarkan hasil potongan kode dikarenakan rasio kemunculan label “Yes” dan “No” pada kolom “churn” tidak terlalu tempang (imbalanced) ia merasa dataset dapat secara langsung digunakan tanpa proses resamplings. 