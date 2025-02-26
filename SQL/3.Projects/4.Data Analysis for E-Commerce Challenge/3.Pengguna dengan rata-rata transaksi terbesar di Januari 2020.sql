select buyer_id, count(1) as jumlah_transaksi, avg(total) as avg_nilai_transaksi
from orders
where created_at>='2020-01-01' and created_at<'2020-02-01'
group by 1
having count(1)>= 2
order by 3 desc
limit 10

-- Tugas
-- Lengkapi kode SQL berikut ini agar menampilkan 10 pembeli dengan rata-rata nilai transaksi terbesar yang bertransaksi minimal 2 kali di Januari 2020. Tampilkan variabel buyer_id, jumlah_transaksi, dan avg_nilai_transaksi