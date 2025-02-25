#import library yang dibutuhkan
import re

#function email_check
def email_check(input):
    match = re.search('(?=^((?!-).)*$)(?=[^0-9])((?=^((?!\.\d).)*$)|(?=.*_))',input)
    if match:
        print('Pass')
    else:
        print('Not Pass')

#Masukkan data email ke dalam list
emails = ['my-name@someemail.com', 'myname@someemail.com','my.name@someemail.com',
'my.name2019@someemail.com', 'my.name.2019@someemail.com',
'somename.201903@someemail.com','my_name.201903@someemail.com',
'201903myname@someemail.com', '201903.myname@someemail.com']


#Looping untuk pengecekan Pass atau Not Pass, gunakan variabel email untuk mengiterasi emails
for email in emails :
	email_check(email)

# Teori
# Sebagai seorang Data Engineer, Anda diminta untuk membuat suatu fungsi yang bernama “email_check” untuk menyaring beberapa email menggunakan regular expression dalam bahasa pemrograman Python. Fungsi ini akan menerima suatu parameter yang bernama “input” yang mana merupakan email dan output-nya akan berupa “Pass” atau “Not Pass”. Fungsinya harus memenuhi pola berikut :

# Pola	                        Pass / Not Pass
# my-name@someemail.com           Not Pass

# myname@someemail.com            Pass

# my.name@someemail.com           Pass

# my.name2019@someemail.com       Pass

# my.name.2019@someemail.com      Not Pass

# somename.201903@someemail.com   Not Pass

# my_name.201903@someemail.com    Pass

# 201903myname@someemail.com      Not Pass

# 201903.myname@someemail.com     Not Pass

