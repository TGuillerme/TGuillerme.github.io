library(scholar)
ID <- "LA9l9EkAAAAJ&hl"

# Citation history
cite.by.year <- get_citation_history(ID)

# How many papers have I published?
num_articles <- get_num_articles(ID)

# Number of unique journals
num_journal <- get_num_distinct_journals(ID)


# Get publications and write to a csv file
pubs <- get_publications(ID)
write.csv(pubs, file = "citations.csv")

# Predict my h-index
h.index <- predict_h_index("P7FvGMEAAAAJ&hl")
