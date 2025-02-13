select StudentID, Email, replace(Email, 'yahoo', 'gmail') as New_Email from students;  

-- Teori
-- Fungsi Text REPLACE()

-- Syntax: 

-- SELECT REPLACE(ColumnName, Character/String to be change, New String/Character)
-- FROM TableName; 
-- Keterangan:

--      ColumnName --> nama kolom yang akan diganti isi tiap record/barisnya berdasarkan string/karakter tertentu

--      Character/String to be change --> string/karakter yang dimiliki untuk diganti

--      New String/Character --> string/karakter baru pengganti string/karakter sebelumnya