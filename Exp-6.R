##### Current working directory ##### 
getwd()


##### Change the current directory #####
setwd("C:/Users/MEHAK LAL/IGDTUW/1st_Sem/ITW/Exp")




##### Creating a sample CSV file #####
shop <- data.frame(
  Name = c("Bat", "Hat", "Ring"),
  Price = c(230,250, 220),
  Category = c("Sports", "Accessories", "Jewelry")
)
write.csv(shop,"shop.csv", row.names = FALSE)


##### Import the CSV File #####
csv_data <- read.csv("shop.csv", stringsAsFactors = FALSE)
head(csv_data)
str(csv_data)





##### Creating a Tab-Separated text file #####
write.table(shop, "shop1.txt", sep = "\t", row.names = FALSE, quote = FALSE)


# Import the Tab-Separated File
text_data <- read.table("shop1.txt", sep = "\t", header = TRUE, stringsAsFactors = FALSE)
head(text_data)





##### Exporting to Comma Separated Value (CSV) File #####
products <- data.frame(
  Name = c("Notebook", "Pen", "Folder"),
  Price = c(20, 20, 35),
  Description = c("Stationary", "Stationary", "Stationary")
)
write.csv(products, "products.csv", row.names = FALSE)


##### Check the Exported file by importing it again #####
check_csv <- read.csv("products.csv")
print(check_csv)






##### Exporting to text (tab separated) file #####
write.table(products, "products.txt", sep = "\t", row.names = FALSE, quote = FALSE)


## Import it again to verify ##
check_text <- read.table("products.txt", sep = "\t", header = TRUE, stringsAsFactors = FALSE)
print(check_text)


