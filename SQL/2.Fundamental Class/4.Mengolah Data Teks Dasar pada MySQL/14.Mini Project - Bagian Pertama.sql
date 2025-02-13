SELECT 
LEFT(isi, LOCATE('|||', isi) - 1) as Nama,
SUBSTR(isi, LOCATE('|||', isi) + 3, LOCATE('|||', isi, LOCATE('|||', isi) + 1) - LOCATE('|||', isi) - 3) as KotaLahir,
SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, 
LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3) as TanggalLahir,
RIGHT(isi, LENGTH(isi) - LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - 3 + 1) as Propinsi
FROM dqlabdatateks;

-- Mini Project - Bagian Pertama
-- Tadi aku sudah memberikan latihan pada Antara, aku ingin menguji pemahamannya, apakah bisa menyelesaikan soal selanjutnya dengan penggabungan coding dari latihan sebelumnya. 

-- "Antara, kerjakan soal berikut sendiri ya. Aku tidak akan membantu. Aku berikan petunjuk saja padamu," perintahku. 

-- Nama : mulai dari kiri, sejumlah (posisi ‘|||’ ke-1 - 1)
-- KotaLahir : setelah posisi ‘|||’ ke-1, sejumlah (posisi ‘|||’ ke-2 - posisi ‘|||’ ke-1)
-- TanggalLahir : setelah posisi ‘|||’ ke-2, sejumlah (posisi ‘|||’ ke-3 - posisi ‘|||’ ke-2)
-- Propinsi : mulai dari kanan, sejumlah (panjang teks - posisi ‘|||’ ke-3)
-- Jika bingung menjawabnya, coba baca kembali : Latihan-1 hingga Latihan-7 pada Chapter Latihan Bagian Pertama