import pandas as pd
import matplotlib.pyplot as plt
tabel = (pd.read_csv("https://storage.googleapis.com/dqlab-dataset/usia_karyawan.csv")
		 .sort_values("Kelompok Usia", ascending=False)
		 .set_index("Kelompok Usia"))
tabel["Laki-laki"] = -tabel["Laki-laki"]

fig, axes = plt.subplots(1, 2, figsize=(14, 6))
fig.suptitle("Perbandingan Jumlah Karyawan Laki-laki dan Perempuan\nBerdasarkan Kelompok usia", x=0., y=1.0, fontsize=24, fontweight = "bold", ha="left")

tabel[ "Laki-laki"].plot(kind="barh", ax=axes[0], color="tab:blue", xlim=[-550, 0])
tabel[ "Perempuan" ].plot(kind="barh", ax=axes [1], color="tab:orange", fontsize=14, xlim=[0, 550])
axes[0].set_ylabel("")
axes[0].tick_params (left=False, bottom=False, labelleft=False, labelbottom=False)
axes[0].legend (["Laki-laki"], fontsize=14, bbox_to_anchor=(0., 0., 1., .05))
axes[0].set_frame_on (False)
axes[1].set_ylabel("")
axes[1].tick_params(left=False, bottom=False, labelbottom=False)
axes[1].legend (["Perempuan"], fontsize=14, bbox_to_anchor=(0., 0., 0.3, .05))
axes[1].set_frame_on (False)
for i, m, w in zip (range(tabel.shape[0]), list(tabel [ "Laki-laki"]), list(tabel ["Perempuan"])): 
	axes[0].annotate(str (abs (m)), (m+20, i), xytext=(m+20, i),color="w", va="center", ha="center", fontsize=14)
	axes [1]. annotate(str (abs (w)), (w-20, i), xytext=(w-20, i),color="w", va="center", ha="center", fontsize=14)
plt.tight_layout (rect=(0,0,1,0.88)) 
plt.show()