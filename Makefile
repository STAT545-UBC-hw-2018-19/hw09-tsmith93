all: report.html

clean:
	rm -f deniro.csv deniro.tsv deniro.png report.md report.html
	
deniro.csv:
	Rscript -e 'download.file("https://people.sc.fsu.edu/~jburkardt/data/csv/deniro.csv", destfile = "deniro.csv", quiet = TRUE)'

deniro.tsv: deniro.rt.r deniro.csv
	Rscript $<
	
deniro.png: deniro.tsv
	Rscript -e 'library(ggplot2); library(tidyverse); data=read.delim("$<") %>% ggplot(aes(Year, Score)) + geom_point() + geom_smooth(se = FALSE); ggsave("$@")'
	rm Rplots.pdf
	
report.html: report.rmd deniro.tsv deniro.png
	Rscript -e 'rmarkdown::render("$<")'