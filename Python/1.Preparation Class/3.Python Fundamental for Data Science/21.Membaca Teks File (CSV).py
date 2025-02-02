import requests
from contextlib import closing
import csv

# tentukan lokasi file, nama file, dan inisialisasi csv
url = 'https://storage.googleapis.com/dqlab-dataset/penduduk_gender_head.csv'

# baca file csv secara streaming 
with closing(requests.get(url, stream=True)) as r:
    f = (line.decode('utf-8') for line in r.iter_lines())

    reader = csv.reader(f, delimiter=',')

    # membaca baris per baris
    for row in reader:
        print(row)