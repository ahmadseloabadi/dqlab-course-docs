select StudentID, FirstName, LastName, mod(Semester1, 2) as Semester1, Semester2, exp(MarkGrowth) from students;

-- Tugas:
-- Gunakan fungsi MOD() untuk menghitung nilai sisa jika nilai Semester1 dibagi 2 dan fungsi EXP() untuk menghitung nilai eksponensial dari nilai MarkGrowth. Gunakan kedua fungsi tersebut dalam satu SELECT-Statement. 