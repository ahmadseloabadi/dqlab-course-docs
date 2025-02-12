import pickle
import pandas as pd
data = [{  
    'Customer_ID': 'CUST-100' ,  
    'Nama Pelanggan': 'Joko' ,  
    'Jenis Kelamin': 'Pria',  
    'Umur': 45,  
    'Profesi': 'Wiraswasta',  
    'Tipe Residen': 'Cluster' ,  
    'NilaiBelanjaSetahun': 8230000  
      
}]
new_df = pd.DataFrame(data) 

def data_preprocess(data):
    kolom_kategorikal = ['Jenis Kelamin','Profesi','Tipe Residen']
    df_encode = data[kolom_kategorikal].copy()
    df_encode['Jenis Kelamin'] = df_encode['Jenis Kelamin'].map({  
        'Pria': 0,  
        'Wanita' : 1  
    })
    df_encode['Profesi'] = df_encode['Profesi'].map({  
        'Ibu Rumah Tangga': 0,  
        'Mahasiswa' : 1,  
        'Pelajar': 2,  
        'Professional': 3,  
        'Wiraswasta': 4  
    }) 
    df_encode['Tipe Residen'] = df_encode['Tipe Residen'].map({  
        'Cluster': 0,  
        'Sector' : 1  
    }) 
    kolom_numerik = ['Umur','NilaiBelanjaSetahun']  
    df_std = data[kolom_numerik].copy()
    df_std['Umur'] = (df_std['Umur'] - 37.5)/14.7 
    df_std['NilaiBelanjaSetahun'] = (df_std['NilaiBelanjaSetahun'] - 7069874.8)/2590619.0
    df_model = df_encode.merge(df_std, left_index = True,  
                           right_index=True, how = 'left')  
    return df_model  
  
new_df_model = data_preprocess(new_df)  

def modelling (data): 
    kpoto = pickle.load(open('cluster.pkl', 'rb'))
    clusters = kpoto.predict(data,categorical=[0,1,2])  
    return clusters  
    
clusters = modelling(new_df_model)

def menamakan_segmen (data_asli, clusters):  
      
    # Menggabungkan cluster dan data asli  
    final_df  = data_asli.copy()  
    final_df['cluster'] = clusters
      
    # Menamakan segmen  
    final_df['segmen'] = final_df['cluster'].map({  
        0: 'Diamond Young Member',  
        1: 'Diamond Senior Member',  
        2: 'Silver Students',  
        3: 'Gold Young Member',  
        4: 'Gold Senior Member'  
    })  
      
    return final_df
  
# Menjalankan Fungsi  
new_final_df = menamakan_segmen (new_df,clusters)  
  
print(new_final_df)  



# Teori
# Sama dengan sebelumnya, kamu perlu membuat fungsi untuk melakukan proses ini. Nama cluster  yang sudah didapat di tahap sebelumnya perlu diubah menjadi nama segmen agar lebih mudah diidentifikasi.

# Tugas:

# Disini kamu harus membuat fungsi yang bernama menamakan_segmen dengan data asli dan clusters sebagai input-nya.

# Kesimpulan
# Akhirnya, kamu juga berhasil membuat alur proses untuk mengoperasikan model. Selanjutnya kamu dapat menjadwalkan kode ini. Apakah akan dijalankan secara real-time setiap ada data masuk atau secara batch misal satu hari sekali.

# Tips:

# Di industri khususnya untuk mengoperasikan model bisa bermacam-macam caranya. Ada yang membuat dengan python script lalu dibuat interval jam jalannya. Selain itu bisa juga menggunakan bantuan software untuk melakukan deployment. Hal ini akan tergantung di mana kamu bekerja.