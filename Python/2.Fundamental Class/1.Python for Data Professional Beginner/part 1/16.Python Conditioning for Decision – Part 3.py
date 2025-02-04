jam = 13
if jam >=5 and jam<12: # selama jam di antara 5 s.d. 12
    print("Selamat pagi!")
elif jam >=12 and jam<17: # selama jam di antara 12 s.d. 17
    print("Selamat siang!")
elif jam >=17 and jam<19: # selama jam di antara 17 s.d. 19
    print("Selamat sore!")
else: # selain kondisi di atas
    print("Selamat malam!")

# Dari yang aku pelajari pada bagian awal dari flow control statement, conditional operator juga dapat digunakan dengan operator logika. 

# Sebagai catatan tambahan, aku juga belajar bahwa aksi dalam sebuah flow control statement dapat dituliskan flow control statement tambahan (lainnya) secara bersarang yang dikenal dengan istilah nested if.