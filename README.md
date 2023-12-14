Hi, this is my 611 Data Science Project. I chose to look at a data set containing information about Forbes' Richest Athletes Lists from 1990 to 2020. In the data set, there are variables containing the athlete's name, nationality, rank (in terms of earnings) for the current year, rank for the previous year, sport, income year, and earnings in millions of dollars. The data can be found here: https://www.kaggle.com/datasets/parulpandey/forbes-highest-paid-athletes-19902019. My analysis will focus on trends among the athletes' salaries over the years and consistency of sports and athletes appearing in the top spot of the Forbes List. 

Here are the instructions for cloning my GitHub repository, building my VM, and launching it:

1. Visit the terminal and clone my GitHub project repository by typing:

```
git clone https://github.com/TeyaDavis23/BIOS611-Project
```

2. Build the docker image by typing:

```
docker build . --build-arg USER_ID=$(id -u) -t 611project
```

3. Start an RStudio by typing:

```
docker run --rm -v $(pwd):/home/rstudio/work -p 8787:8787 -it 611project
```

4. Once the Rstudio is running connect to it by visiting
https://localhost:8787 in your browser.


Here are the instructions for building my project and viewing the analysis:

1. Visit the terminal in RStudio and insure that you are in the 'work' directory by typing:

```
cd work
```

2. To build the Project Report in its entirety, within the terminal in RStudio, type:

```
make clean
make Report.html
```

3. To build the derived data sets, figures, and R scripts individually, within the terminal in RStudio, type:

```
make clean
make derived_data/Number1_RichestAthlete.csv
make derived_data/Number1_Sport.csv
make derived_data/Number1_Name.csv
make derived_data/Sports_Earnings.csv
make figures/Scatterplot1025.png
make figures/Histogram1025.png
make figures/Histogram1204.png
make figures/Scatterplot1204.png
make Project_Clustering.R
```

