Getting and Cleaning Data - Course Project
=====================

### How to run the script

* Clone this repository: `git clone https://github.com/bik1979/GetData_courseProject.git`

* Set your R working directory to the same directory where `"run_analysis.R"` is,  
i.e. if the repository is in folder `"~/projects/GetData_courseProject"`, then run 
`setwd("~/projects/GetData_courseProject")` in R.

* run `source("run_analysis.R")`

* The script will check if the datasets are present and in case it does not find them, 
will download the zip file and unzip the files to  working directory. Therefore, 
if you already have the dataset and don't want to download it again, just the folder 
*UCI HAR Dataset* the project folder.

* The script will then perform the all the required operations and data transformations on the original data set and when it finishes, the tidy dataset `tidy_data_avg.txt` will be created in the same directory where the script is.

* A code book for the generated dataset is available [here](CodeBook.md)
