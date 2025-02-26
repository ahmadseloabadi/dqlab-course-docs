select category, sum(quantity) as total_quantity, sum(price) as total_price
from orders
inner join order_details using(order_id)
inner join products using(product_id)
where created_at>='2020-01-01'
and delivery_at is not null
group by 1
order by 2 desc
limit 5

-- Tugas
-- Lengkapi kode SQL berikut ini agar menampilkan 5 Kategori dengan total quantity terbanyak di tahun 2020, hanya untuk transaksi yang sudah terkirim ke pembeli. Tampilkan category, total_quantity, total_price

