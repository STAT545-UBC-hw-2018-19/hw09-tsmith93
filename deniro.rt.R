deniro_table <- read.csv("deniro.csv")
write.table(deniro_table, "deniro.tsv",
			sep = "\t", row.names = FALSE, quote = FALSE)

