#Buatlah variable factor.lokasi dengan isi berupa vector c("Bandung", "Jakarta", NA, "Jakarta", NaN, "Medan", NULL, NULL, "Bandung") 
factor.lokasi <- factor(c("Bandung", "Jakarta", NA, "Jakarta", NaN, "Medan", NULL, NULL, "Bandung")) 
#Tampilkan factor.lokasi
factor.lokasi


# Teori
# NA, NULL dan NaN adalah tiga nilai khusus untuk merepresentasikan missing values atau nilai yang hilang di R.

# Jika ketiganya dimasukkan ke dalam factor melalui deklarasi vector, maka prinsip berikut tetap berlaku:

# Na dan NaN akan menjadi bagian dari isi factor, NULL akan dihilangkan
# Hanya NaN yang akan dikenali sebagai levels
# Sebagai contoh, jika kita membuat factor dengan nilai berikut.

# factor(c("Bandung", "Jakarta", NA, "Jakarta", NaN, "Medan", NULL, NULL, "Bandung"))
# maka hasil tampilannya adalah sebagai berikut.

# > #Tampilkan factor.lokasi
# > factor.lokasi
# [1] Bandung Jakarta     Jakarta NaN     Medan   Bandung
# Levels: Bandung Jakarta Medan NaN
# Terlihat nilai NULL dibuang di tampilan isi factor, kemudian pada levels nilai NA juga dibuang.

 

# Tugas Praktik

# Pada code editor, buatlah satu variabel dengan nama factor.lokasi dengan isi sama persis dengan contoh pada lesson di atas – ketikkan ini pada bagian […1…].

# Tampilkan variable factor tersebut pada bagian […2…].