# Connect to SQL Server
sqlConnString <- "Driver=SQL Server;Server=70.12.114.130;Database=VideoShop;uid=sa;pwd=1234;"
connection <- RxSqlServerData(connectionString = sqlConnString,
                              table = "VS_CUSTOMER", rowsPerRead = 1000)
# Use R functions to examine the data in the Airports table
head(connection)
rxGetVarInfo(connection)
rxSummary(~., connection)

# SampleDataDir
myfilelists <- list.files(rxGetOption("sampleDataDir"))
myfilepath <- file.path(rxGetOption("sampleDataDir"), "claims.txt")
df <- rxImport(myfilepath)
View(df)
str(df)
class(df)
tmp_data <- RxTextData(myfilepath)
class(tmp_data)
tmp_data$colNames
myfilepath2 <- file.path(rxGetOption("sampleDataDir"), 
    "AirlineDemoSmall.csv")
myfilepath2
df2 <- rxImport(myfilepath2)
head(df2)
df2
df3 <- read.csv(myfilepath2)
df3
df4 <- rxImport(inData = myfilepath2,
    outFile = "c:/Test_Data/AirlineDemoSmall.xdf",
    overwrite = TRUE, stringsAsFactors = TRUE)
rxGetInfo(df4, getVarInfo = TRUE)
View(df2)
list.files(rxGetOption("sampleDataDir"))
df5 <- rxImport(rxGetOption("sampleDataDir"), 
    "AirlineDemoSmall.xdf")

claims <- file.path(rxGetOption("sampleDataDir"), "claims.txt")
claims

tmpData <- rxImport(inData = claims,
    outFile = "c:/Test_Data/Claims.xdf",
    overwrite = TRUE, stringsAsFactors = TRUE)
rxGetInfo(tmpData, getVarInfo = TRUE)


# XDF to data.frame
df10 <- rxDataStep(inData = tmpData)
class(df10)
View(df10)


