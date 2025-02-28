Library yang digunakan
Pada analisis kali ini, akan digunakan beberapa package yang membantu kita dalam melakukan analisis data,

Package dplyr, merupakan package yang paling sering digunakan dalam analisis data, sangat membantu dalam manipulasi data, fungsi yang paling sering digunakan adalah :
mutate() membuat variabel baru berdasarkan variabel yang ada
select() memilih variabel berdasarkan namannya
filter() memfilter data berdasarkan value dari variabel
summarise() mengubah beberapa nilai menjadi satu ringkasan nilai
arrange() mengurutkan baris data
Package ggplot2, merupakan package yang digunakan untuk membuat plot dengan syntax yang konsisten, secara umum, untuk membuat plot dengan memanggil fungsi,
ggplot(data) + geom_type(aes(x,y,fill,color))
geom_type diganti dengan fungsi sesuai dengan jenis plot yang diharapkan, misalnya geom_line, geom_bar, geom_point, geom_boxplot dan lainnya.
Packages scales, digunakan untuk memformat value data numerik menjadi format yang mudah dibaca, tidak terlalu sering digunakan, tapi membantu ketika eksplorasi data. fungsi yang biasa dipakai adalah :
comma() mengubah numerik menjadi ada simbol ribuan, misalnya 10000000000 diubah menjadi 10,000,000,000
percent() mengubah numerik menjadi ada format persen, misalnya 0.65877 diubah menjadi 66%
