df <- c(1,2,3,4,5,6,NA,7,8,9,NA)
df
mean_replace <- function(df){
df[is.na(df)] <- mean(df, na.rm = TRUE)
return (df)}
df <- mean_replace(df)
df

# Tugas
# Buatlah sebuah “R Function” di mana Function tersebut dapat digunakan untuk mengganti missing value dari suatu vector dengan nilai mean dari vector tersebut.

