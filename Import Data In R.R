
#IMPORT CSV
x <- read.csv("StudentsPerformance.csv")
head(x)
install.packages("readr")
library(readr)
read_csv("StudentsPerformance.csv")

#IMPORT TXT
y <- "Volcanoes.txt"
read_tsv(y)
read.table(y, header = TRUE, sep = "/", stringsAsFactors = FALSE)

#IMPORT EXCEL
install.packages("readxl")
library(readxl)
x <- "2021OlympicsTeams.xlsx"
read_excel(x)
excel_sheets(x)
args(read_excel)
read_excel(x, sheet = "Details", skip = 10)

#Import Webdata
install.packages("httr")
library(httr)
url <- "https://en.wikipedia.org/wiki/Main_Page"
data <- GET(url)
print(data)
content = conent(data, as ="text")

#Import SQL Data
install.packages("RMySQL")
library(DBI)
connection <- dbConnect(RMySQL::MySQL(),
                        dbname ="tweater",
                        host ="courses.csrrinzqubik.us-east-1.rds.amazonaws.com",
                        port = 3306,
                        user = "student",
                        password = "datacamp")
dbListTables(connection)
users <- dbReadTable(connection, "users")
print(users)
dbGetQuery(connection, "select name from users")
