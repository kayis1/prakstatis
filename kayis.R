library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'ps2_kayis', host = 'localhost')
dbListTables(con) 
myQuery <- "SELECT * FROM data_kayis;"
df <- dbGetQuery(con, myQuery)

install.packages("RMySQL")

library(dplyr)
df<-filter(df,jenis.kelamin=="L")
print(df)

library(dplyr)
df<-filter(df,Brick=="No", Neighborhood=="East")
print(df)

