select StudentID, substring_index(Email, '@', 1) as name from students;

-- Teori
-- Fungsi Text SUBSTRING_INDEX()

-- Syntax: 

-- SELECT SUBSTRING_INDEX(column, delimiter, index to return)  
-- FROM TableName; 
-- Keterangan:

--      column --> merupakan nama kolom yang akan dipecah text-nya,

--      delimiter --> karakter atau gabungan beberapa karakter untuk pemecah text pada kolom bersangkutan,

--      index_to_return --> indeks dari pecahan text yang akan diambil.