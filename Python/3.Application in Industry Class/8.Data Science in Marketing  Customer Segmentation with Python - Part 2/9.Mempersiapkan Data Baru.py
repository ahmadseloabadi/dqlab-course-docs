import pandas as pd
# Data Baru  
data  = [{  
    'Customer_ID': 'CUST-100' ,  
    'Nama Pelanggan': 'Joko' ,  
    'Jenis Kelamin': 'Pria',  
    'Umur': 45,  
    'Profesi': 'Wiraswasta',  
    'Tipe Residen': 'Cluster' ,  
    'NilaiBelanjaSetahun': 8230000  
      
}]  
  
# Membuat Data Frame  
new_df = pd.DataFrame(data)
  
# Melihat Data  
print(new_df)  


# Teori
# Disini kamu membuat contoh data baru untuk diprediksi dengan model yang sudah dibuat. Hal ini kamu lakukan dengan membuat satu buah dataframe yang berisi informasi pelanggan.

# Tugas:

# Buatlah satu dataframe yang berisi informasi pelanggan dan tampilkan hasilnya.