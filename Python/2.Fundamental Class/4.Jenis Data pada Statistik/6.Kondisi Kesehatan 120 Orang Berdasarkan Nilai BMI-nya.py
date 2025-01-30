# Importlah pandas sebagai aliasnya pd
import pandas as pd
# Data berat badan 120 orang (kg)
bb120 = [71.2, 66.8, 66.9, 65.9, 69.7, 63.4, 71.5, 66.5, 68.6, 67.5, 
         70.9, 63.9, 67.4, 67.2, 70.3, 65.8, 67.7, 66.2, 68.1, 69.2, 
         65.8, 70.3, 69.8, 69.0, 69.8, 66.6, 67.8, 66.1, 67.5, 69.1, 
         66.6, 67.2, 66.6, 66.3, 66.7, 68.0, 65.8, 68.5, 71.3, 69.5, 
         67.6, 66.2, 66.5, 71.4, 68.1, 66.7, 68.4, 72.2, 68.2, 69.2, 
         68.6, 67.3, 65.7, 67.3, 67.6, 69.2, 69.7, 69.9, 68.6, 69.8, 
         66.5, 70.5, 69.0, 67.4, 69.0, 67.8, 70.3, 71.0, 72.4, 65.2, 
         65.1, 67.0, 68.3, 69.8, 68.6, 64.0, 67.4, 69.7, 68.5, 69.5, 
         67.6, 67.6, 68.4, 68.8, 68.4, 68.2, 66.7, 68.8, 68.2, 70.3, 
         70.4, 68.4, 67.2, 66.7, 68.8, 68.2, 67.3, 68.1, 66.8, 69.4, 
         67.1, 70.4, 68.8, 69.2, 65.8, 68.3, 69.5, 66.1, 67.5, 68.1, 
         65.3, 68.6, 69.7, 66.3, 68.7, 65.4, 67.9, 64.8, 70.2, 68.8]
# Data tinggi badan 120 orang (cm)
tb120 = [157., 163., 156., 166., 162., 165., 155., 160., 164., 161., 
         172., 149., 166., 162., 167., 161., 144., 164., 160., 155., 
         157., 162., 177., 163., 155., 173., 159., 156., 154., 157., 
         174., 167., 166., 162., 163., 165., 163., 162., 168., 160., 
         163., 156., 171., 170., 150., 160., 165., 165., 166., 159., 
         136., 163., 152., 166., 166., 149., 167., 160., 157., 164., 
         170., 171., 154., 159., 162., 162., 159., 147., 160., 154., 
         162., 156., 161., 157., 159., 159., 170., 166., 160., 154., 
         168., 152., 154., 157., 155., 156., 170., 161., 157., 166., 
         163., 154., 158., 165., 174., 171., 167., 161., 151., 157., 
         160., 165., 162., 162., 173., 164., 160., 159., 162., 156.,
         170., 160., 158., 156., 167., 153., 159., 163., 161., 163.]

# DataFrame yang berisi bb120 dan tb120
df = pd.DataFrame({"berat_badan_kg": bb120,
                   "tinggi_badan_cm": tb120})
# Hitunglah BMI-nya sesuai dengan persamaan yang diberikan
df["BMI"]= df["berat_badan_kg"] / (df["tinggi_badan_cm"]/100)**2
# Cetak lima data teratas data frame df
print("Lima data teratas:", df.head(), sep="\n")

# Buat urutan bilangan yang merupakan batas dari kategori BMI
bin_list = [0, 18.5,25 , 30, 1000]
# Kategorikan nilai BMI melalui kolom BMI yang telah dihitung
bin_cut = pd.cut(df["BMI"], bin_list, right=False, include_lowest=True)
# Kelompokkanlah kolom BMI sesuai dengan kategorinya dan hitung jumlah orang disetiap kategorinya
kondisi = df[["BMI"]].groupby(bin_cut).count()
kondisi.rename(columns={"BMI": "Jumlah"}, inplace=True)
# Kondisi kesehatan 120 penduduk di suatu kelurahan
print("\nKondisi kesehatan 120 penduduk di suatu kelurahan:")
print(kondisi)