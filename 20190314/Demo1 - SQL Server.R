# Connect to SQL Server

sqlConnString <- "Driver=SQL Server;Server=70.12.114.130;Database=VideoShop;uid=sa;pwd=1234;"
connection <- RxSqlServerData(connectionString = sqlConnString,
                              table = "VS_CUSTOMER", rowsPerRead = 1000)
# Use R functions to examine the data in the Airports table
head(connection)
rxGetVarInfo(connection)
rxSummary(~., connection)