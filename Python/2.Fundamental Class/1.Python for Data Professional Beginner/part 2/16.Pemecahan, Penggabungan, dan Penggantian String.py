# Fitur .split()
print(">>> Fitur .split()")
frasa = "ani dan budi dan wati dan johan"
karakter = frasa.split('dan')
print(karakter)
kata = frasa.split(' ')
print(kata)
# Fitur .join()
print(">>> Fitur .join()")
pemisah = " dan "
karakter = ["Ricky", "Peter", "Jordan"]
frasa = pemisah.join(karakter)
print(frasa)
frasa = " ".join(karakter)
print(frasa)
# Fitur .replace()
print(">>> Fitur .replace()")
frasa = "apel malang apel yang paling segar, apel sehat, apel nikmat"
frasa = frasa.replace('apel','jeruk')
print(frasa)

# Teori
# Pada bagian ini, aku akan mempelajari bagaimana cara memecah suatu string dengan kondisi tertentu sehingga menghasilkan list of string. Kemudian, akan dipelajari bagaimana cara menggabungkan beberapa list of string menjadi string saja. Akhirnya, aku akan mengganti sub-string tertentu dengan sub-string lainnya sehingga mengubah string awalnya.

