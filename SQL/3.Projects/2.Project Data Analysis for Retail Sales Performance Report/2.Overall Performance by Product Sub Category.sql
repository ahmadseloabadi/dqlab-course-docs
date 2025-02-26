SELECT
 EXTRACT(YEAR FROM order_date) AS years,
 product_sub_category,
 SUM(sales) AS sales
FROM dqlab_sales_store
WHERE order_status = 'Order Finished' AND EXTRACT(YEAR FROM order_date) BETWEEN 2011 AND 2012
GROUP BY 
 years,
 product_sub_category
ORDER BY
 years,
 sales DESC;

-- TUgas
--  Buatlah Query dengan menggunakan SQL untuk mendapatkan total penjualan (sales) berdasarkan sub category dari produk (product_sub_category) pada tahun 2011 dan 2012 saja (years) 

