SELECT 
	nama_pelanggan
FROM 
	ms_pelanggan
ORDER BY CASE 
	WHEN LEFT(nama_pelanggan,3)='Ir.' 
	THEN SUBSTRING(nama_pelanggan,5,100)  
ELSE nama_pelanggan END
ASC;

-- Tugas
-- Tampilkan nama-nama pelanggan dan urutkan hasilnya berdasarkan kolom nama_pelanggan dari yang terkecil ke yang terbesar (A ke Z), namun gelar tidak boleh menjadi bagian dari urutan. Contoh: Ir. Agus Nugraha harus berada di atas Heidi Goh.

-- Nama kolom yang harus ditampilkan: nama_pelanggan.