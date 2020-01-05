con <- file("stdin", open = "r")

while (length(lines <- readLines(con, n = 1, warn = FALSE)) > 0) {
  fields <- unlist(strsplit(lines, split = "\\t", perl = TRUE))
  year <- substr(fields[1],start = 1,stop = 4)
  month <- substr(fields[1],start = 6,stop = 7)
  airlineID <- as.numeric(fields[2])
  deptDelay <- as.numeric(fields[7])
  cat(paste(airlineID, "|", year, "|", month, sep=""), "\t", deptDelay, "\n")
}

close(con)






