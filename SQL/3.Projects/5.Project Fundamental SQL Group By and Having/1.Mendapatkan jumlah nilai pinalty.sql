SELECT customer_id, sum(pinalty) 
FROM invoice
GROUP BY customer_id 
HAVING sum(pinalty) > 0;

-- Tugas
-- Pada pelayanan terdapat customer yang mendapatkan pinalty yang diakibatkan telat membayar.

-- Carilah customer-customer id dan jumlah pinalty dari yang dibayarkan oleh customer yang mendapatkan pinalty.