# Create a Hadoop compute context
context <- RxHadoopMR(sshUsername = "hadoop", 
                      sshHostname = "172.16.0.100")

rxSetComputeContext(context)

# List the contents of the /user/hadoop folder in HDFS
# hadoop fs -ls /user/hadoop
# hdfs namenode -format
# hdfs dfs -ls /
rxHadoopCommand("fs -ls /user/hadoop")

# hadoop fs -put input(local) output(hdfs path)

# HDFS, SqlServer, Text(CSV...)...SAS, SPSS,....(Sources)

# Connect directly to HFDS on the Hadoop VM
hdfsConnection <- RxHdfsFileSystem()
rxSetFileSystem(hdfsConnection)

# Create a data source for the CensusWorkers.xdf file
workerInfo <- RxXdfData("/user/hadoop/CensusWorkers.xdf")

# Perform functions that read from the CensusWorkers.xdf file
head(workerInfo)
rxSummary(~., workerInfo)
