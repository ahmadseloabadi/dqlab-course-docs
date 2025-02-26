SELECT
 EXTRACT(YEAR FROM order_date) AS years,
 product_sub_category,
 product_category,
 SUM(sales) AS sales,
 SUM(discount_value) AS promotion_value,
 ROUND((SUM(discount_value) / SUM(sales)) * 100, 2) AS burn_rate_percentage
FROM dqlab_sales_store
WHERE order_status = 'Order Finished' AND EXTRACT(YEAR FROM order_date) = 2012
GROUP BY
 years,
 product_sub_category,
 product_category
ORDER BY
 sales DESC;

-- Tugas
-- Pada bagian ini kita akan melakukan analisa terhadap efektifitas dan efisiensi dari promosi yang sudah dilakukan selama ini seperti pada bagian sebelumnya. 

-- Akan tetapi, ada kolom yang harus ditambahkan, yaitu : product_sub_category dan product_category

-- Adapun output yang seharusnya dihasilkan adalah sebagai berikut:

-- +-------+--------------------------------+------------------+-----------+-----------------+----------------------+
-- | years | product_sub_category           | product_category | sales     | promotion_value | burn_rate_percentage |
-- +-------+--------------------------------+------------------+-----------+-----------------+----------------------+
-- |  2012 | Office Machines                | Technology       | 811427140 |        46616695 |                 5.75 |
-- |  2012 | Chairs & Chairmats             | Furniture        | 654168740 |        26623882 |                 4.07 |
-- |  2012 | Telephones and Communication   | Technology       | 422287514 |        18800188 |                 4.45 |
-- |  2012 | Tables                         | Furniture        | 388993784 |        16348689 |                  4.2 |
-- |  2012 | Binders and Binder Accessories | Office Supplies  | 363879200 |        22338980 |                 6.14 |

-- Notes :

-- Data yang ditampilkan hanya untuk tahun 2012
-- Contoh output di atas hanya 5 baris pertama dari output yang diharapkan