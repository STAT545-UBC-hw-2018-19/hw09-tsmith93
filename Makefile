all: deniro.tsv

clean:
	rm -f deniro.csv deniro.tsv
	
deniro.png: deniro.tsv
	Rscript -e 'library(ggplot2); qplot(Year, Score, data=read.delim("$<")); ggsave("$@")'
		rm Rplots.pdf
	
deniro.tsv: deniro.rt.r deniro.csv
	Rscript $<

deniro.csv:
	Rscript -e 'download.file("https://people.sc.fsu.edu/~jburkardt/data/csv/deniro.csv", destfile = "deniro.csv", quiet = TRUE)'
