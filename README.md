Hi, this is my 611 Data Science Project. Here are the instructions for building 
my VM, launching it, & building the Project Skeleton:

1. Build the docker image by typing:

```
docker build . --build-arg USER_ID=$(id -u) -t 611project
```

2. Start an RStudio by typing:

```
docker run --rm -v $(pwd):/home/rstudio/work -p 8787:8787 -it 611project
```

3. Once the Rstudio is running connect to it by visiting
https://localhost:8787 in your browser.

4. To build the Project Skeleton with the source data, derived data, & figures, 
visit the terminal in RStudio & type:

```
make source_data/ForbesRichestAthletes.csv
make derived_data/Number1_RichestAthlete.csv
make derived_data/Number1_Sport.csv
make figures/Scatterplot1025.png
make figures/Histogram1025.png
```

