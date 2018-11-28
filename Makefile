all: deniro.csv

clean:
	rm -f deniro.csv

deniro.csv:
	Rscript -e 'download.file("https://people.sc.fsu.edu/~jburkardt/data/csv/deniro.csv", destfile = "deniro.csv", quiet = TRUE)'
