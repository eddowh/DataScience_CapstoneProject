# enable multicore processing
library(doParallel)
registerDoSEQ()
cl <- makeCluster(detectCores(), type='PSOCK')
registerDoParallel(cl)

# function for
# - reading JSON data format
# - converting data frame to tbl_df
# - saving data frame as local file
fromJSONtoRDS <- function(sourcefile, destfile) {
    # parse JSON
    library(jsonlite)
    data <- fromJSON(sprintf("[%s]",paste(readLines(sourcefile), collapse = ",")))
    data <- data.frame(data)
    data <- flatten(data)
    # read data faster
    library(dplyr)
    data <- tbl_df(data)
    # save file as RDS
    saveRDS(data, destfile)
}

# business dataset
fromJSONtoRDS(sourcefile = './yelp_dataset_challenge_academic_dataset/yelp_academic_dataset_business.json',
              destfile = './yelp_dataset_challenge_academic_dataset/yelp_academic_dataset_business.rds')

# checkin dataset
fromJSONtoRDS(sourcefile = './yelp_dataset_challenge_academic_dataset/yelp_academic_dataset_checkin.json',
              destfile = './yelp_dataset_challenge_academic_dataset/yelp_academic_dataset_checkin.rds')

# review dataset
fromJSONtoRDS(sourcefile = './yelp_dataset_challenge_academic_dataset/yelp_academic_dataset_review.json',
              destfile = './yelp_dataset_challenge_academic_dataset/yelp_academic_dataset_review.rds')

# tip dataset
fromJSONtoRDS(sourcefile = './yelp_dataset_challenge_academic_dataset/yelp_academic_dataset_tip.json',
              destfile = './yelp_dataset_challenge_academic_dataset/yelp_academic_dataset_tip.rds')

# user dataset
fromJSONtoRDS(sourcefile = './yelp_dataset_challenge_academic_dataset/yelp_academic_dataset_user.json',
              destfile = './yelp_dataset_challenge_academic_dataset/yelp_academic_dataset_user.rds')

# disable multicore processing
registerDoSEQ()