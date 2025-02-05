#import library 
import pandas as pd

# Baca data 'ecommerce_banner_promo.csv'
data = pd.read_csv('https://storage.googleapis.com/dqlab-dataset/pythonTutorial/ecommerce_banner_promo.csv')

#1. Data eksplorasi dengan head(), info(), describe(), shape
print("\n[1] Data eksplorasi dengan head(), info(), describe(), shape")
print("Lima data teratas:")
print(data.head())
print("Informasi dataset:")
print(data.info())
print("Statistik deskriptif dataset:")
print(data.describe())
print("Ukuran dataset:")
print(data.shape)

# Case Study: Promos for our e-commerce - Part 1
# Aku akan membuat machine learning model untuk menyelesaikan permasalahan dari e-commerce divisi kantor.

# Adapun feature - feature dalam dataset ini adalah :

# 'Daily Time Spent on Site' : lama waktu user mengunjungi site (menit)
# 'Age' : usia user (tahun)
# 'Area Income' : rata - rata pendapatan di daerah sekitar user
# 'Daily Internet Usage' : rata - rata waktu yang dihabiskan user di internet dalam sehari (menit)
# 'Ad Topic Line' : topik/konten dari promo banner
# 'City' : kota dimana user mengakses website
# 'Male' : apakah user adalah Pria atau bukan
# 'Country' : negara dimana user mengakses website
# 'Timestamp' : waktu saat user mengklik promo banner atau keluar dari halaman website tanpa mengklik banner
# 'Clicked on Ad' : mengindikasikan user mengklik promo banner atau tidak (0 = tidak; 1 = klik).
 

# Di proyek ini, aku diharapkan untuk membuat machine learning model sesuai dengan prosedur machine learning yang sudah disharing sebelumnya. Jadi, tahap - tahap yang perlu dilakukan adalah (langkah ke-1) terlebih dahulu

# Data eksplorasi dengan head(), info(), describe(), shape