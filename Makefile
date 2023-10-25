PHONY: clean

clean: 
	rm source_data/ForbesRichestAthletes.csv
	rm derived_data/Number1_RichestAthlete.csv
	rm derived_data/Number1_Sport.csv
	rm figures/Scatterplot1025.png 
	rm figures/Histogram1025.png

source_data/ForbesRichestAthletes.csv: 
	wget https://github.com/TeyaDavis23/BIOS611-Project/raw/main/source_data/ForbesRichestAthletes.csv -O source_data/ForbesRichestAthletes.csv

derived_data/Number1_RichestAthlete.csv: source_data/ForbesRichestAthletes.csv ProjectSkeleton_Data1.R
	Rscript ProjectSkeleton_Data1.R

derived_data/Number1_Sport.csv: source_data/ForbesRichestAthletes.csv derived_data/Number1_RichestAthlete.csv ProjectSkeleton_Data2.R
	Rscript ProjectSkeleton_Data2.R

figures/Scatterplot1025.png: ProjectSkeleton_Figure1.R
	Rscript ProjectSkeleton_Figure1.R
	
figures/Histogram1025.png: ProjectSkeleton_Figure2.R
	Rscript ProjectSkeleton_Figure2.R