select StudentID, FirstName, LastName, ceiling(Semester1) as Semester1, ceiling(Semester2) as Semester2, MarkGrowth from students;

-- Teori
-- Fungsi CEILING()

-- Syntax: 

-- SELECT CEILING(ColumnName)  
-- FROM TableName; 