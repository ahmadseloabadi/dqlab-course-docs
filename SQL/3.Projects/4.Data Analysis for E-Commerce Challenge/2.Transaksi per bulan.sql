select EXTRACT(YEAR_MONTH FROM created_at) as tahun_bulan, count(1) as jumlah_transaksi, sum(total) as total_nilai_transaksi
from orders
where created_at>='2020-01-01'
group by 1
order by 1


-- Tugas
-- Lengkapi kode SQL berikut ini agar menampilkan summary transaksi per bulan di tahun 2020.  

-- Tampilkan variabel tahun_bulan, jumlah_transaksi, dan total_nilai_transaksi.