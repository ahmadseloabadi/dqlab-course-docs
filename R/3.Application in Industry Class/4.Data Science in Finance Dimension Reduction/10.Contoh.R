(A <- as.matrix(data.frame(c(1,0,1),c(0,1,1),c(1,1,0))))
e <- eigen(A)
str(e)
e