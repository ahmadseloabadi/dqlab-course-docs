select province, count(distinct order_id) as total_order, sum(item_price) as total_price from sales_retail_2019 group by province;

-- Teori
-- Fungsi Group by Single Column memastikan data dapat dikelompokkan menggunakan kriteria dari satu kolom saja, misalnya mengelompokkan data berdasarkan provinsi saja.


