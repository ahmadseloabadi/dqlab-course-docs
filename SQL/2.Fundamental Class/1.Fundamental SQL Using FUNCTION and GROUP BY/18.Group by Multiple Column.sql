select province, brand, count(distinct order_id) as total_order, sum(item_price) as total_price from sales_retail_2019 group by province, brand;

-- Teori
-- Dengan fungsi Group by Multiple Column, data dapat dikelompokkan menggunakan kriteria dari dua kolom atau lebih, misalnya mengelompokkan data berdasarkan province dan brand.

