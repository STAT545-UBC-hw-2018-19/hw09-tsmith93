all: deniro.tsv

clean:
	rm -f deniro.csv deniro.tsv
	
deniro.tsv: deniro.rt.r deniro.csv
	Rscript $<

deniro.csv:
	Rscript -e 'download.file("https://people.sc.fsu.edu/~jburkardt/data/csv/deniro.csv", destfile = "deniro.csv", quiet = TRUE)'
