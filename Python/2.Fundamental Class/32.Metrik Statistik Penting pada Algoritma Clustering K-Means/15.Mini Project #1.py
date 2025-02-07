#Import library pandas
import pandas as pd
data = pd.read_csv("https://storage.googleapis.com/dqlab-dataset/RFM_customer.csv", encoding='utf8')

#Drop kolom customer_id
RFM_km = data.drop(["customer_id"], axis=1)

#Penerapan RobustScaler
from sklearn.preprocessing import RobustScaler
robust_scaler = RobustScaler()
RFM_robust = robust_scaler.fit_transform(RFM_km)
RFM_robust = pd.DataFrame(RFM_robust)
RFM_robust.columns = ["Frequency","Recency","Monetary"]

#Import library K-Means
from sklearn.cluster import KMeans

#Deklarasi variable wss
WSS = []
 
#Melakukan k-means berkali-kali dengan nilai k yang berbeda-beda dari 3 sampai 15
for k in range(3, 15):
	k_means = KMeans(n_clusters=k, random_state=0)
	model = k_means.fit(RFM_robust)
	WSS.append(k_means.inertia_)
	
#Import library matplotlib.pyplot
import matplotlib.pyplot as plt
 
#Mengkonversi hasil ke dalam data frame, kemudian menampilkannya dalam bentuk plot
frame = pd.DataFrame({"Cluster":range(3,15), "WSS":WSS})
plt.figure(figsize=(8,5))
plt.plot(frame["Cluster"], frame["WSS"], marker="o")
plt.xlabel("Number of clusters")
plt.ylabel("Inertia")
plt.show()

# Tugas
# Mini Project yang diberikan Senja untukku adalah mengulang teknik elbow method dengan percobaan rentang k dari 3 sampai 15. Kemudian tampilkan juga hasil plot dari nilai WSS yang ditampung ke dalam variable bernama wss!