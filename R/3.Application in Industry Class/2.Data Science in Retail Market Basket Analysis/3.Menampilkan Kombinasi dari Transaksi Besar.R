#Menggunakan library arules
library(arules)

#Membaca transaksi dari file data_transaksi2.txt
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi2.txt", format="single", sep="\t", cols=c(1,2), skip=1)

#Menampilkan jumlah kombinasi dari produk yang terdapat pada daftar transaksi yang ada
inspect(apriori(transaksi, parameter = list(support=.03, minlen=2, target='frequent itemsets')))


# Teori
# Setelah pada subbab sebelumnya kita melihat kombinasi dari transaksi yang hanya berjumlah 10. Pada praktek kali ini, kita akan membaca file dimana di dalamnya terdapat 100 transaksi - yang jika ditampilkan sebagian hasilnya akan terlihat sebagai berikut. Ini lebih mencerminkan transaksi pada dunia nyata - yang jumlah transaksinya bahkan bisa sampai jutaan - dibandingkan dengan contoh sebelumnya.

#        items                              transactionID
# [1]    {Baju Kaos Olahraga,                            
#         Baju Renang Pria Dewasa,                       
#         Baju Renang Wanita Dewasa,                     
#         Celana Jogger Casual,                          
#         Dompet Card Holder,                            
#         Kaos,                                          
#         Sepatu Sport merk Z,                           
#         Serum Vitamin,                                 
#         Shampo Biasa}                             #1   
# [2]    {Baju Batik Wanita,                             
#         Baju Kemeja Putih,                             
#         Celana Jogger Casual,                          
#         Celana Pendek Jeans,                           
#         Dompet Card Holder,                            
#         Dompet STNK Gantungan,                         
#         Flat Shoes Ballerina,                          
#         Hair Dryer,                                    
#         Jeans Jumbo,                                   
#         Kaos,                                          
#         Wedges Hitam}                             #10  
# [3]    {Baju Renang Wanita Dewasa,                     
#         Celana Jogger Casual,                          
#         Dompet Card Holder,                            
#         Dompet Flip Cover,                             
#         Hair Dryer,                                    
#         Hair Tonic,                                    
#         Sepatu Sandal Anak,                            
#         Sepatu Sport merk Y,                           
#         Sepatu Sport merk Z,                           
#         Shampo Biasa,                                  
#         Tali Pinggang Anak}                       #100 
# ...
# [999]  {Baju Batik Wanita,                             
#         Baju Kaos Anak - Superheroes,                  
#         Blouse Denim,                                  
#         Dompet Flip Cover,                             
#         Hair Dryer,                                    
#         Kuas Makeup ,                                  
#         Sepatu Sandal Anak,                            
#         Serum Vitamin,                                 
#         Sunblock Cream,                                
#         Tali Pinggang Gesper Pria,                     
#         Tas Pinggang Wanita,                           
#         Tas Travel}                               #998 
# [1000] {Baju Batik Wanita,                             
#         Baju Kaos Anak - Karakter Kartun,              
#         Celana Pendek Jeans,                           
#         Celana Tactical ,                              
#         Cover Koper,                                   
#         Tank Top,                                      
#         Tas Tangan}                               #999 
# Keseluruhan transaksi ini merupakan kombinasi dari 70 item produk. Dan kalau kita analisa dengan syarat support 0.03 (minimal muncul 30 kali dari 1000 transaksi) maka jumlah kombinasi yang dihasilkan adalah 1248. Semakin kecil support yang kita masukkan akan semakin banyak kombinasi yang muncul.

#        items                              support
# [1]    {Shampo Biasa,                            
#         Tas Makeup}                         0.031
# [2]    {Tank Top,                                
#         Tas Tangan}                         0.032
# [3]    {Celana Pendek Jeans,                     
#         Tas Tangan}                         0.031
# [4]    {Cover Koper,                             
#         Tas Tangan}                         0.030
# [5]    {Baju Batik Wanita,                       
#         Celana Panjang Format Hitam}        0.037
# ...
# [1246] {Baju Batik Wanita,                       
#         Blouse Denim,                            
#         Sepatu Sandal Anak,                      
#         Serum Vitamin,                           
#         Shampo Biasa}                       0.031
# [1247] {Baju Batik Wanita,                       
#         Baju Kemeja Putih,                       
#         Sepatu Sandal Anak,                      
#         Serum Vitamin,                           
#         Shampo Biasa}                       0.030
# [1248] {Atasan Kaos Putih,                       
#         Baju Renang Pria Dewasa,                 
#         Gembok Koper,                            
#         Tank Top,                                
#         Tas Travel,                              
#         Wedges Hitam}                       0.044
# Dengan jumlah kombinasi yang sedemikian besar untuk kita analisa, akan sulit bagi kita jika kita lakukan secara manual. Inilah alasan kenapa proses ini perlu diotomatisasi dengan bantuan algoritma.

# Cobalah jalankan code yang telah tampil berikut untuk menghasilkan output seperti di atas, dan lakukan analisa. Jika sudah selesai silahkan klik tombol Submit Code untuk melanjutkan ke subbab berikutnya.