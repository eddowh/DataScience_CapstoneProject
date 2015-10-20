# check if data directory exists, if not download file and unzip
if(!file.exists("./yelp_dataset_challenge_academic_dataset")){
    download.file("https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/yelp_dataset_challenge_academic_dataset.zip",
                  destfile = "./yelp_dataset_challenge_academic_dataset.zip")
    unzip("./yelp_dataset_challenge_academic_dataset.zip")
}