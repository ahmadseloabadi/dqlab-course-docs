# Definisikan class Karyawan (sebagai base class)
class Karyawan: 
    nama_perusahaan = 'ABC' 
    insentif_lembur = 250000
    def __init__(self, nama, usia, pendapatan): 
        self.nama = nama
        self.usia = usia 
        self.pendapatan = pendapatan 
        self.pendapatan_tambahan = 0
    def lembur(self):
        self.pendapatan_tambahan += self.insentif_lembur 
    def tambahan_proyek(self, insentif_proyek):
        self.pendapatan_tambahan += insentif_proyek 
    def total_pendapatan(self):
        return self.pendapatan + self.pendapatan_tambahan
# Buat class turunan (sebagai inherit class) dari class karyawan, 
# yaitu class AnalisData
class AnalisData(Karyawan):
    def __init__(self, nama, usia, pendapatan):
    # melakukan pemanggilan konstruktur class Karyawan 
        super().__init__(nama, usia, pendapatan)
# Buat kembali class turunan (sebagai inherit class) dari class karyawan,  
# yaitu class IlmuwanData
class IlmuwanData(Karyawan):
    def __init__(self, nama, usia, pendapatan):
        # melakukan pemanggilan konstruktur class Karyawan 
        super().__init__(nama, usia, pendapatan)
# Buat objek karyawan yang bekerja sebagai AnalisData
aksara = AnalisData('Aksara', 25, 8500000)
aksara.lembur()
print(aksara.total_pendapatan())
# Buat objek karyawan yang bekerja sebagai IlmuwanData
senja = IlmuwanData('Senja', 28, 13000000)
senja.tambahan_proyek(2000000)
print(senja.total_pendapatan())

# Teori:
# Melalui potongan kode di atas, aku telah menerapkan konsep inheritance. Melalui konsep inheritance class AnalisData dan IlmuwanData akan memiliki setiap atribut dan fungsi yang dimiliki oleh class Karyawan (Hal ini dikarenakan seluruh atribut dan fungsi dari class Karyawan bersifat public).

# Pada konsep inheritance, class AnalisData dan class IlmuwanData disebut sebagai child class dari class Karyawan; sehingga class Karyawan dapat disebut sebagai parent class dari class AnalisData dan IlmuwanData.

# Suatu child class dapat mengakses atribut ataupun fungsi yang dimiliki oleh parent class dengan menggunakan fungsi super(). Pada contoh di atas, fungsi super() digunakan oleh child class (AnalisData dan IlmuwanData) untuk mengakses constructor yang dimiliki oleh parent class (Karyawan).

# Catatan: Sebenarnya, aku tidak perlu mendefinisikan kembali fungsi (termasuk constructor) ataupun properti yang memiliki public access modifier di sebuah child class. Python akan secara otomatis mewariskan seluruh fungsi dan properti dengan public access modifier ke sebuah child class. Contoh potongan kode di atas hanya diperkenankan untuk mencontohkan penggunaan fungsi super().