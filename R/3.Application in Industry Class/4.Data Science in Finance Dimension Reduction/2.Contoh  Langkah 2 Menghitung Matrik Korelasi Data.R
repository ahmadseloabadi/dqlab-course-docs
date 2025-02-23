library(openxlsx)

df <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/dqlab_pcadata.xlsx", sheet="3varb")
df <- scale(df, center = TRUE, scale = TRUE)

cormat <- cor(df)
cormat

Teori

Pada dataset ini variabel x1 dan x2 memiliki korelasi linier yang erat (r12 = 0.987) sedangkan pasangan variabel x2 dan x3 dan pasangan x1 dan x3 tidak memiliki korelasi yang sekuat pasangan x1 dan x2 (r13 = 0.299, r23 = 0.258). Scatter plot juga memberikan kesimpulan serupa.

