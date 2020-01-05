# getwd()
# 
# con <- url("https://raw.githubusercontent.com/einanc/test-repo/master/ontime_flights.tsv", open = "r")
# liness <- readLines(con, n= 2)
# fields <- unlist(strsplit(liness, split = "\\t", perl = TRUE))
# deptDelay <- fields[7]
# date <- fields[1]
# airlineID <- fields[2]
# 
# year <- substr(fields[1],start = 1,stop = 4)
# month <- substr(fields[1],start = 6,stop = 7)
# airlineID <- as.numeric(fields[2])
# deptDelay <- as.numeric(fields[7])
# 
# cat(paste(airlineID, "|", date, "|", month, sep=""), "\t", deptDelay, "\n")
# 
# 
# con <- file("C:/Users/Kafein/Documents/GitHub/test-repo/ontime_flights.tsv")
# 



mapper <- function() {
  # For each record in airline dataset, output a new record consisting of
  # "CARRIER|YEAR|MONTH \t DEPARTURE_DELAY"

  con <- url("https://raw.githubusercontent.com/einanc/test-repo/master/ontime_flights.tsv", open = "r")
  while (length(lines <- readLines(con, n = 1, warn = FALSE)) > 0) {
    fields <- fields <- unlist(strsplit(liness, split = "\\t", perl = TRUE))
    year <- substr(fields[1],start = 1,stop = 4)
    month <- substr(fields[1],start = 6,stop = 7)
    airlineID <- as.numeric(fields[2])
    deptDelay <- as.numeric(fields[7])
    cat(paste(airlineID, "|", date, "|", month, sep=""), "\t", deptDelay, "\n")
  }
  close(con)
}




