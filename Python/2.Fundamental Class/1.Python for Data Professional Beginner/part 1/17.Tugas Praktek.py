tagihan_ke = 'Mr. Yoyo'
warehousing = { 'harga_harian': 1000000, 'total_hari':15 } 
cleansing = { 'harga_harian': 1500000, 'total_hari':10 } 
integration = { 'harga_harian':2000000, 'total_hari':15 } 
transform = { 'harga_harian':2500000, 'total_hari':10 }
sub_warehousing = warehousing['harga_harian'] *warehousing['total_hari']
sub_cleansing = cleansing['harga_harian'] *cleansing['total_hari'] 
sub_integration = integration['harga_harian'] *integration['total_hari'] 
sub_transform = transform['harga_harian'] *transform['total_hari']
total_harga = sub_warehousing+sub_cleansing+sub_integration+sub_transform
print("Tagihan kepada:") 
print(tagihan_ke)
print("Selamat pagi, anda harus membayar tagihan sebesar:") 
print(total_harga)

# Tugas:
# “Aksara, kantor kita akan merilis penawaran baru terkait jasa pembuatan data warehouse. Bisa tolong kembangkan kalkulatormu untuk menghitung tagihan pembayaran? Soalnya selama ini kita masih manual,” jelas Senja sembari memberikan contoh nota tagihan kantor.

# Aku belum mengiyakan karena sedikit ragu. Mengingat sebelumnya aku sempat salah. Tapi dalam hati aku berkata, pasti bisa! Kali ini aku harus mampu membuat kalkulator lebih rumit.

# Solusi yang terlintas dalam bayanganku: Kalkulator ini harus dapat menghitung subtotal setiap jasa yang diambil dari kolom harga/ hari dan total hari dari setiap jasa. Ternyata Senja juga memikirkan hal yang sama dengan instruksinya yang sangat membantu.