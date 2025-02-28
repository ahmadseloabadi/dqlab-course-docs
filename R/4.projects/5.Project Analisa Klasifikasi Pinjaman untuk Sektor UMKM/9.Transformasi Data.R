data_select_new = data_select
data_select_new$KEWAJIBAN = scale(data_select_new$KEWAJIBAN)[, 1]
data_select_new$OSL = scale(data_select_new$OSL)[, 1]
data_select_new$KEWAJIBAN = cut(data_select_new$KEWAJIBAN, breaks = c(-0.354107,5,15,30))
data_select_new$KEWAJIBAN = as.factor(data_select_new$KEWAJIBAN)
data_select_new$OSL = cut(data_select_new$OSL, breaks = c(-0.60383,3,10,15))
data_select_new$OSL = as.factor(data_select_new$OSL)
data_select_new = na.omit(data_select_new)

# Teori
# Untuk memberikan performa model yang baik,  maka pada data kita perlu dilakukan treatment tertentu, misalnya dilakukan scalling atau dilakukan pengelompokan data atau disebut juga bucketing.

