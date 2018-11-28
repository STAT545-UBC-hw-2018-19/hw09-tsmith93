all: deniro.png 

clean:
	rm -f deniro.csv deniro.tsv deniro.png 
	
deniro.png: deniro.tsv
	Rscript -e 'library(ggplot2); library(tidyverse); data=read.delim("$<") %>% ggplot(aes(Year, Score)) + geom_point() + geom_smooth(se = FALSE); ggsave("$@")'
	rm Rplots.pdf
	
deniro.tsv: deniro.rt.r deniro.csv
	Rscript $<

deniro.csv:
	Rscript -e 'download.file("https://people.sc.fsu.edu/~jburkardt/data/csv/deniro.csv", destfile = "deniro.csv", quiet = TRUE)'
