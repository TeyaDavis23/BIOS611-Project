PHONY: clean

clean: 
	rm source_data/ForbesRichestAthletes.csv
	rm Scatterplot1025.png 
	rm Histogram1025.png

source_data/ForbesRichestAthletes.csv: 
	wget https://github.com/TeyaDavis23/BIOS611-Project/raw/main/source_data/ForbesRichestAthletes.csv -O source_data/ForbesRichestAthletes.csv
	
Scatterplot1025.png: ProjectSkeleton.R
	Rscript ProjectSkeleton.R
	
Histogram1025.png: ProjectSkeleton.R
	Rscript ProjectSkeleton.R