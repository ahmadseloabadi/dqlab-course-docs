# Buat fungsi penjumlahan deret Fibonacci
def calculateSum(n):
    if n <= 0:
        return 0
    fibo = [0] * n
    fibo[1] = 1
    # Inisialisasi hasil ke dalam variabel sm
    sm = fibo[0] + fibo[1]
    # Tambahkan suku-suku berikutnya
    for i in range(2, n):
        fibo[i] = fibo[i - 1] + fibo[i - 2]
        sm += fibo[i]
    return sm
# Evaluasi hasil deret untuk n = 7    
print(calculateSum(7))

# Tugas
# Tulislah sebuah fungsi Python yang digunakan untuk menghitung n deret pertama Fibonacci yang dimulai dari 0.

# Input  :  n = 7
# Output :  20
# Gantilah _ _ _ dengan fungsi/literal/variabel yang sesuai