library(tidyverse)

# Reading in the data

# counts_raw <- read.delim()

counts_raw <- read_delim("data/counts-raw.txt.gz", delim = "\t")

# Check dimension of data

dim(counts_raw)

colnames(counts_raw)

# Getting summary of plos comment count
summary(counts_raw$plosCommentCount)

# Summary of weeks since publication
summary(counts_raw$daysSincePublished / 7)

# Plot histogram
weeks_since_pub <- counts_raw$daysSincePublished / 7
hist(weeks_since_pub)

plot(counts_raw$daysSincePublished/7, counts_raw$wosCountThru2011)
