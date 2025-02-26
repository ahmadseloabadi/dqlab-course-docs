SELECT no_urut,kode_pelanggan,nama_pelanggan,alamat
FROM ms_pelanggan
WHERE nama_pelanggan LIKE '%S.H%' OR nama_pelanggan LIKE '%Ir.%'
OR nama_pelanggan LIKE '%Drs.%'


-- Tugas
-- Tampilkan hanya nama-nama pelanggan yang hanya memiliki gelar-gelar berikut: S.H, Ir. dan Drs.

-- Nama kolom yang harus ditampilkan: no_urut, kode_pelanggan, nama_pelanggan, dan alamat.