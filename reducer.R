
con <- file("https://raw.githubusercontent.com/einanc/test-repo/master/ontime_flights.tsv", open = "r")

while (length(lines <- readLines(con, n = 1, warn = FALSE)) > 0) {
  fields <- fields <- unlist(strsplit(lines, split = "\\t", perl = TRUE))
  year <- substr(fields[1],start = 1,stop = 4)
  month <- substr(fields[1],start = 6,stop = 7)
  airlineID <- as.numeric(fields[2])
  deptDelay <- as.numeric(fields[7])
  cat(paste(airlineID, "|", date, "|", month, sep=""), "\t", deptDelay, "\n")
}

close(con)

con <- file("stdin")
#com <- file("mapped")
liness <- readLines(con)
close(con)

keyval <- list()

for (i in seq_along(liness))
{
  linex <- unlist(strsplit(liness[i], split = "\t"))
  key <- linex[1]
  val <- as.numeric(linex[2])
  
  cur.maxval <- keyval[[key]]
  
  if (is.null(cur.maxval))
  {   
    keyval[[key]] <- val 
  }
  else
  {   
    if (val > cur.maxval)
    {
      keyval[[key]] <- val 
    }
  }
}

keys <- as.numeric(names(keyval))
vals <- as.numeric(unlist(keyval))

output <- matrix(c(keys, vals), ncol = 2)
output <- output[order(keys),, drop = F]

for (i in seq_along(output[,1]))
{
  pasted <- paste(output[i,], collapse = "\t")
  cat(sprintf("%s\n", pasted))
}