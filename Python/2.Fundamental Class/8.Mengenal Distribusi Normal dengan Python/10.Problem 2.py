import numpy as np
from scipy.stats import norm

tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

tb_mean = tinggi_badan.mean()
tb_std = tinggi_badan.std(ddof=1)

for i in range(1, 4):
    x = tb_mean  + np.array([-i, i]) * tb_std
    cdf_x = norm.cdf(x, loc=tb_mean, scale=tb_std)
    print("Area di bawah kurva pdf (%ds s/d %ds)" % (-i, i))
    print("  pdf(%.4f <= x <= %.4f) = %.4f.\n" % (*x, np.diff(cdf_x)))

# Tugas
# membuktikan apakah benar bahwasanya luas area dibawah kurva pdf untuk data tinggi badan dalam rentang yang ditunjukkan oleh gambar berikut sesuai nilainya.

# Langkah
# menggunakan range hingga melibatkan 3 standar deviasi (std) unbiased yaitu 1 s/d 4 sebagai pengulang dalam perulangan for yang setiap nilainya dijadikan index perulangan i
# variabel x dibuat dimulai dari ±1 std hingga ±3 std terhadap nilai rata-ratanya (mean), gunakan indeks perulangan i. Dengan demikian, kamu akan memiliki x = [mean - std, mean + std] untuk i = 1, kemudian untuk i = 1 kamu memiliki x = [mean - 2*std, mean + 2*std], dan seterusnya hingga i = 3.
# menggunakan cdf dari norm untuk data x yang telah dibuat.