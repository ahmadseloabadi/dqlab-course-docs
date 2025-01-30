# Import numpy sebagai aliasnya np
import numpy as np
# Baca dataset 
tinggi_badan = np.loadtxt("https://storage.googleapis.com/dqlab-dataset/survei_tinggi_badan.txt", skiprows=1)

# Tentukan rentang data
print("Range data:")
print("  min:", tinggi_badan.min())
print("  max:", tinggi_badan.max())


# 