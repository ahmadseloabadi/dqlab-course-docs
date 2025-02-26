SELECT
 EXTRACT(YEAR FROM order_Date) AS years,
 SUM(sales) AS sales,
 SUM(discount_value) AS promotion_value,
 ROUND((SUM(discount_value) / SUM(sales)) * 100, 2) AS burn_rate_percentage
FROM dqlab_sales_store
WHERE order_status = 'Order Finished'
GROUP BY years
ORDER BY years ASC;

-- TUgas
-- Pada bagian ini kita akan melakukan analisa terhadap efektifitas dan efisiensi dari promosi yang sudah dilakukan selama ini

-- Efektifitas dan efisiensi dari promosi yang dilakukan akan dianalisa berdasarkan Burn Rate yaitu dengan membandigkan total value promosi yang dikeluarkan terhadap total sales yang diperoleh

-- DQLab berharap bahwa burn rate tetap berada diangka maskimum 4.5%

-- Formula untuk burn rate : (total discount / total sales) * 100

-- Buatkan Derived Tables untuk menghitung total sales (sales) dan total discount (promotion_value) berdasarkan tahun(years) dan formulasikan persentase burn rate nya (burn_rate_percentage).