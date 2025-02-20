import pandas as pd
# Series
number_list = pd.Series([1,2,3,4,5,6])
# DataFrame
matrix_list = pd.DataFrame([[1,2,3],
				            ['a','b','c'],
				            [3,4,5],
				            ['d',4,6]])
# [5] attribute .copy()
print("[5] attribute .copy()")
num_list = number_list.copy()
print("    Copy number_list ke num_list:", num_list)
mtr_list = matrix_list.copy()
print("    Copy matrix_list ke mtr_list:", mtr_list)	
# [6] attribute .to_list()
print("[6] attribute .to_list()")
print(number_list.to_list())
# [7] attribute .unique()
print("[7] attribute .unique()")
print(number_list.unique())

# Teori

# Attribute .copy() digunakan melakukan duplikat, untuk disimpan di variable yang berbeda mungkin supaya tidak loading data lagi.

# Attribute .to_list() digunakan untuk mengubah series menjadi list dan tidak dapat digunakan untuk dataframe.

# Attribute .unique() digunakan menghasilkan nilai unik dari suatu kolom, hasilnya dalam bentuk numpy array. Attribute ini hanya digunakan pada series saja.


