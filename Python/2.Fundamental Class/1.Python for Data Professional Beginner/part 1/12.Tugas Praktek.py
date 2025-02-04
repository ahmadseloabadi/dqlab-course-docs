# Data yang dinyatakan ke dalam dictionary
sepatu = {"nama": "Sepatu Niko", "harga": 150000, "diskon": 30000} 
baju = {"nama": "Baju Unikloh", "harga": 80000, "diskon": 8000} 
celana = {"nama": "Celana Lepis", "harga": 200000, "diskon": 60000}
# Hitunglah harga masing-masing data setelah dikurangi diskon
harga_sepatu = sepatu["harga"] - sepatu["diskon"] 
harga_baju = baju["harga"] - baju['diskon']
harga_celana = celana['harga'] - celana["diskon"]
# Hitung harga total
total_harga = harga_sepatu + harga_baju + harga_celana
# Hitung harga kena pajak
total_pajak = total_harga * 0.1
# Cetak total_harga + total_pajak
print(total_harga + total_pajak)

# Tugas
# Dengan data yang aku miliki, aku bisa menghitung total harga jual dengan potongan harga beserta pajak sebesar 10% dari nilai jual.

# Untungnya Senja memberikan beberapa tips untuk menyelesaikan tugas ini:

# Tips 1. # Data yang dinyatakan ke dalam dictionary
# Tips 2. # Hitung harga masing-masing data setelah dikurangi diskon
# Tips 3. # Hitung harga total
# Tips 4. # Hitung harga kena pajak
# Tips 5. # Cetak total_harga + total_pajak