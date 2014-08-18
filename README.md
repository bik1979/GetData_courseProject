Getting and Cleaning Data - Course Project
=====================

### How to run the script

* Clone this repository: `git clone https://github.com/bik1979/GetData_courseProject.git`

* Set your R working directory to the same directory where `"run_analysis.R"` is,  
i.e. if the repository is in folder `"~/projects/GetData_courseProject"`, then run 
`setwd("~/projects/GetData_courseProject")` in R.

* run `source("run_analysis.R")`

* The script will check if the datasets are present and in case it does not find them, 
will download the zip file and unzip the files to `"./data"` folder. Therefore, 
if you already have the dataset and don't want to download it again, just copy all 
the files contained in the *UCI HAR Dataset*  to a folder named *data* within the 
project folder.

* The tidy dataset `tidy_data_avg.txt` will be created in the same directory where
the script is.

* A code book for the generated dataset is available [here](CodeBook.md)
