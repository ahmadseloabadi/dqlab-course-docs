Credit risk adalah resiko yang harus ditanggung oleh seorang individu atau lembaga ketika memberikan pinjaman - biasanya dalam bentuk uang - ke individu atau pihak lain.

Resiko ini berupa tidak bisa dibayarkannya pokok dan bunga pinjaman, sehingga mengakibatkan kerugian berikut:

gangguan aliran kas (cash flow) sehingga modal kerja terganggu.
meningkatkan biaya operasional untuk mengejar pembayaran tersebut (collection).
Untuk memperkecil resiko kredit ini, biasanya dilakukan proses yang disebut dengan credit scoring dan credit rating terhadap pihak peminjam. Output proses ini akan menjadi basis untuk menentukan apakah aplikasi pengajuan pinjaman baru diterima atau ditolak.

---

Credit score adalah nilai resiko yang diberikan kepada seorang individu atau organisasi yang mengajukan pinjaman berdasarkan rekam jejak pinjaman dan pembayaran yang dilakukan. Proses pemberian credit score ini biasanya disebut sebagai credit scoring.

Perhitungan credit score biasanya dibuat berdasarkan data historis lamanya keterlambatan pembayaran dan yang tidak bayar sama sekali (bad debt). Bad debt biasanya mengakibatkan lembaga pemberian kredit harus menyita aset atau melakukan write off .
Nilai credit score biasanya bervariasi antar lembaga. Namun banyak yang kemudian mengadopsi model FICO Score yang memiliki rentang nilai 300 - 850. Semakin tinggi nilai yang didapatkan, maka semakin baik tingkat kemampuan seseorang atau sebuah lembaga untuk membayar pinjaman.

---

Risk Rating
Kadang banyak lembaga yang menggunakan risk rating atau tingkat resiko. Terbalik dengan credit score, semakin tinggi rating ini menunjukkan resiko yang semakin meningkat.

Selain itu kodifikasi juga dibuat lebih simpel dibandingkan rentang nilai sehingga keputusan yang bisa diambil lebih cepat. Contoh, misalkan penggunaan kombinasi seperti huruf AAA, AA+, P-1, dan seterusnya. Atau untuk banyak internal lembaga peminjam, kategorisasi hanya menggunakan rentang angka yang kecil misalkan 1 sampai dengan 5.

---

Kesimpulan
Credit risk adalah resiko yang harus ditanggung oleh seorang individu atau lembaga ketika memberikan pinjaman - biasanya dalam bentuk uang - ke individu atau pihak lain.

Resiko ini berupa tidak bisa dibayarkannya pokok dan bunga pinjaman, sehingga mengakibatkan kerugian berikut:

gangguan aliran kas (cash flow) sehingga modal kerja terganggu.
meningkatkan biaya operasional untuk mengejar pembayaran tersebut (collection).
Credit score dan risk rating adalah dua penilaian yang dilakukan meminimalkan resiko dari pihak pemberi kredit. Karena berdasarkan kedua model penilaian tersebut, akan diputuskan apakah aplikasi peminjaman seseorang disetujui atau ditolak.

---

Kesimpulan
Decision tree adalah struktur model untuk pengambilan keputusan dimana kita mengikuti alur dari suatu titik awal (yang disebut root node), kondisi-kondisi berikutnya, sampai mencapai kesimpulan.

Komponen-komponen dari decision tree ini adalah sebagai berikut:

Root node
Branch atau split
Node
Leaf node
Ini adalah model output yang cocok dihasilkan para analis untuk membantu mengidentifikasi risk rating. Dan beruntungnya, model ini bisa otomatis dihasilkan dari algoritma machine learning dengan input data historis credit. Dan ini telah ditunjukkan dengan contoh menggunakan algoritma bernama C5.0.

---

Apa itu algoritma C5.0?
C5.0 adalah kode penamaan suatu algoritma untuk decision tree. Banyak algoritma lain seperti random forest, CART, CHAID, MARS, dan lain-lain. Namun C5.0 adalah algoritma yang sangat populer karena memiliki performa yang sangat baik dari sisi kecepatan maupun akurasi.

Algoritma ini sering dikategorikan sebagai classification, dimana tujuannya adalah untuk mengkategorikan atau mengklasifikan sesuatu - pada contoh kita risk rating - berdasarkan input dari data-data lain.

Pada bab sebelumnya, kita sudah melihat hasil output dari algoritma ini sebagai berikut.

Read 900 cases (4 attributes) from undefined.data

Decision tree:

jumlah_tanggungan > 4:
:...durasi_pinjaman_bulan <= 24: 4 (112/30)
: durasi_pinjaman_bulan > 24: 5 (140/55)
jumlah_tanggungan <= 4:
:...jumlah_tanggungan > 2: 3 (246/22)
jumlah_tanggungan <= 2:
:...durasi_pinjaman_bulan <= 36: 1 (294/86)
durasi_pinjaman_bulan > 36:
:...jumlah_tanggungan <= 0: 2 (41/8)
jumlah_tanggungan > 0: 3 (67/4)

Sepanjang bab ini dan berikutnya, kita akan fokus melakukan praktek bagaimana menghasilkan model ini, mengerti output-output yang dikeluarkan, dan mengevaluasi akurasi model berdasarkan output tersebut.

---

Training Set dan Testing Set
Untuk proses pembentukan model machine learning dan melihat akurasinya, biasanya dataset kita perlu dibagi menjadi dua, yaitu:

Training set: adalah porsi dataset yang digunakan oleh algoritma untuk dianalisa dan menjadi input untuk pembentukan model.
Testing set: adalah porsi dataset yang tidak digunakan untuk membentuk model, tapi untuk menguji model yang telah dibentuk.
Pembentukan ini biasanya menggunakan metode pemilihan acak. Untuk praktek selanjutnya, kita akan membagi dataset kita menjadi 800 baris data untuk training set dan 100 baris data untuk testing set.

---

## Decision Tree

<pre>
<span style="color:cyan;">jumlah_tanggungan > 4:</span>
    <span style="color:purple;">├── durasi_pinjaman_bulan <= 24:</span> <span style="color:red;">4 (98/25)</span>
    <span style="color:purple;">└── durasi_pinjaman_bulan > 24:</span> <span style="color:red;">5 (129/49)</span>
<span style="color:cyan;">jumlah_tanggungan <= 4:</span>
    <span style="color:purple;">├── jumlah_tanggungan > 2:</span> <span style="color:red;">3 (219/17)</span>
    │   <span style="color:blue;">├── durasi_pinjaman_bulan <= 36:</span> <span style="color:green;">1 (259/80)</span>
    │   <span style="color:blue;">└── durasi_pinjaman_bulan > 36:</span>
    │       <span style="color:orange;">├── jumlah_tanggungan <= 2</span> <span style="color:red;">(37/7)</span>
    │       <span style="color:orange;">└── jumlah_tanggungan > 2</span> <span style="color:red;">(50/2)</span>
</pre>

Warna biru adalah node dan kondisi splitnya. Hubungan antar node (connector) ditulis dengan karakter titik dua dan titik berulang (:...).
Warna merah adalah leaf node atau klasifikasinya.
Warna ungu adalah statistik kesalahannya dalam bentuk (jumlah_klasifikasi / jumlah_kesalahan).

---

Persentase Kesalahan Model
Fokus kita berikutnya adalah potongan evaluasi model yang terlihat sebagai berikut.

Evaluation on training data (800 cases):

        Decision Tree
      ----------------
      Size      Errors

         6  180(22.5%)   <<

Informasi yang terdapat pada output ini adalah:

800 cases adalah jumlah baris data (case) yang diproses.
Size = 6 adalah jumlah leaf nodes (node ujung) dari decision tree.
Errors = 180(22.5%): 180 adalah jumlah record yang salah klasifikasi, dan 22.5% adalah rasio dari seluruh populasi.

---

Confusion Matrix
Tampilan output berikutnya adalah semacam tabel yang disebut dengan confusion matrix dengan ukuran 5 x 5.

       (a)   (b)   (c)   (d)   (e)    <-classified as
      ----  ----  ----  ----  ----
       179     1     5     5     6    (a): class 1
        80    30    14     3    12    (b): class 2
               4   258                (c): class 3
               2          73    31    (d): class 4
                          17    80    (e): class 5

Confusion matrix atau error matrix adalah tabel yang menunjukkan hasil dari klasifikasi yang dilakukan model versus (dibandingkan) dengan data klasifikasi sebenarnya, dengan demikian menunjukkan seberapa akurat model melakukan klasifikasi atau prediksi.

Confusion matrix ini terdiri dari jumlah kolom dan row yang sama. Dimana header dari row dan kolom adalah merupakan representasi dari nilai class variable - untuk contoh kita adalah representasi risk_rating. Untuk kasus kita dimana class variable ada 5, maka tabelnya berukuran 5 x 5 seperti terlihat di atas.

Header pada kolom (column headers) menunjukkan nilai class risk_rating yang diprediksi atau diklasifikasikan oleh model, dengan menggunakan label (a), (b), (c), dan seterusnya.
Header pada baris (row headers) menunjukkan nilai class risk_rating pada data sebenarnya. Masih direpresentasikan dengan (a), (b), (c), (d) dan (e). Namun disini sudah diberikan informasi label tersebut merepresentasikan nilai risk_rating yang mana. Terlihat kalau (a) merupakan representasi risk_rating dengan nilai 1, (b) merupakan representasi risk_rating dengan nilai 2, dan seterusnya.
Tiap perpotongan antara kolom dan baris merupakan informasi hasil prediksi dari class ada di nilai pada kolom dibandingkan data aktual class-nya berada pada nilai di baris.
Untuk lebih jelasnya, mari kita diskusikan arti dari nilai-nilai pada baris pertama dari matrix ini.

       (a)   (b)   (c)   (d)   (e)    <-classified as
      ----  ----  ----  ----  ----
       179     1     5     5     6    (a): class 1
        80    30    14     3    12    (b): class 2
               4   258                (c): class 3
               2          73    31    (d): class 4
                          17    80    (e): class 5

Angka 179 pada kolom pertama baris pertama menunjukkan jumlah data yang benar klasifikasi atau prediksinya, dimana:
klasifikasi model terhadap data mendapatkan risk_rating 1
pada data aktual juga nilai risk_rating-nya 1
Angka 1 pada kolom kedua baris pertama menunjukkan jumlah data yang salah prediksi, dimana:
klasifikasi model terhadap data mendapatkan risk_rating 2
pada data aktual ternyata nilai risk_rating-nya 1
Angka 5 pada kolom ketiga baris pertama menunjukkan jumlah data yang salah prediksi, dimana:
klasifikasi model terhadap data mendapatkan risk_rating 3
pada data aktual ternyata nilai risk_rating-nya 1
Angka 5 pada kolom keempat baris pertama menunjukkan jumlah data yang salah prediksi, dimana:
klasifikasi model terhadap data mendapatkan risk_rating 4
pada data aktual ternyata nilai risk_rating-nya 1
Angka 6 pada kolom kelima baris pertama menunjukkan jumlah data yang salah prediksi, dimana:
klasifikasi model terhadap data mendapatkan risk_rating 5
pada data aktual ternyata nilai risk_rating-nya 1
Kita bisa ambil kesimpulan dari penjelasan di atas, jika perpotongan kolom dan baris jatuh pada label yang sama maka klasifikasi dari model itu benar. Sedangkan jika beda label maka salah.

Dari kesimpulan di atas juga, maka kita bisa ambil keseimpulan lanjutan kalau diagonal ke kanan bawah di confusion matrix menunjukkan seluruh prediksi yang benar dari model, karena berpotongan di label yang sama, seperti terlihat pada angka-angka yang diwarnai biru sebagai berikut. Untuk angka yang berwarna merah merupakan representasi jumlah data yang salah prediksi.

       (a)   (b)   (c)   (d)   (e)    <-classified as
      ----  ----  ----  ----  ----
       179     1     5     5     6    (a): class 1
        80    30    14     3    12    (b): class 2
               4   258                (c): class 3
               2          73    31    (d): class 4
                          17    80    (e): class 5

Terakhir, kita coba jumlahkan seluruh angka ini:
Angka dengan prediksi benar: 620 (179 + 30 + 258 + 73 + 80)
Angka dengan prediksi salah: 180 (1 + 5 + 5 + 6 + 80 + 14 + 3 + 12 + 4 + 2 + 31 + 17)
Total adalah 800 data, sesuai dengan statistik sebenarnya. Angka 180 yang merupakan error juga konsisten dengan hasil output di subbab sebelumnya.

---

Variable-variable Penentu
Output terakhir adalah daftar variable-variable yang digunakan oleh model decision tree.

    Attribute usage:

    100.00%	jumlah_tanggungan
     72.62%	durasi_pinjaman_bulan

Output tersebut menceritakan tingkat pentingnya penggunaan tiap variable. Disini jumlah_tanggungan menempati urutan pertama dengan nilai 100% dan durasi_pinjaman dengan 72.62%.

Ini juga yang menjelaskan kenapa jumlah_tanggungan menempati root node di model kita.

---

Kesimpulan
Bab ini memfokuskan diri untuk memberi penjelasan output dari model yang meliputi aspek berikut:

Jumlah baris data yang diproses untuk menghasilkan model.
Jumlah variable yang digunakan untuk menghasilkan model.
Tampilan decision tree.
Statistik error dari model ini.
Confusion matrix yang menampilkan detil dari hasil klasifikasi dan aktual.
Variable-variable yang digunakan dan tingkat pentingnya variable tersebut.
Dengan tingkat error 22.5 persen, model ini harusnya cukup layak digunakan. Dari confusion matrix juga terlihat banyak sekali yang diprediksi dengan benar, terutama untuk nilai risk_rating 4 dan 5. Pada bab berikutnya, kita akan evaluasi model ini dengan memprediksi nilai dari testing set.
