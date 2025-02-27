SELECT Name as name,GROUP_CONCAT(t3.product_name) as product_name FROM customer t1 JOIN subscription  t2 ON  t1.id = customer_id JOIN product t3 ON product_id=t3.ID WHERE t1.id IN (
	SELECT customer_id FROM subscription GROUP BY customer_id HAVING COUNT(customer_id)>1
)
GROUP BY name;

-- Tugas
-- Dalam pelayanan jaringan internet akan terjadi perubahan paket yang dilakukan oleh konsumen tersebut.
-- Sekarang kita akan mencari konsumen-konsumen yang melakukan perubahan layanannya.

-- Ada 3 table yang dibutuhkan dalam mencari data tersebut:

-- customer
-- subscription
-- product
-- Lakukanlah query dengan petunjuk sebagai berikut:

-- Filtrasi dahulu customer_id yang memiliki subscription lebih dari 1 pada table subscription.
-- Kemudian query tersebut digunakan untuk mendapatkan nama customer pada table customer dan lakukan join antara subscription dan product untuk mendapatkan product_name, gunakan function group_concat untuk product_name.