# Data Science Capstone Project
Johns Hopkins University | Coursera  
October - November 2015

## Task 0 - Get the Data

The first step in analyzing any new data set is figuring out: (a) what data you have and (b) what are the standard tools and models used for that type of data. Make sure you have downloaded the data from Coursera before heading for the exercises.

The data for this capstone come from [Yelp](http://www.yelp.com/), which is a business founded in 2004 to "help people find great local businesses like dentists, hair stylists and mechanics." As of the second quarter of 2015, Yelp had a monthly average of 83 million unique visitors who visited Yelp via their mobile device and written more than 83 million reviews.

The dataset provided here is part of the [Yelp Dataset Challenge](http://www.yelp.com/dataset_challenge) and the specific dataset used in this capstone corresponds to Round 6 of their challenge (the documentation mentions Round 5, but the datasets for Rounds 5 and 6 are identical). The dataset is approximately 575MB so you will need access to a good Internet connection to download it.

- **Download the data:** [Yelp Dataset](https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/yelp_dataset_challenge_academic_dataset.zip) (575 MB)

This capstone project will be open-ended, so we will not be prescribing a specific analysis that you need to complete or a specific model that you need to build. Instead, we want you to explore the dataset and familiarize yourself with it so that you can formulate a question that is of interest to *you*.

In this capstone we will be applying a variety of tools of data science. Depending on the type of question you are interested in asking, you may need to apply a different set of skills. Given the nature of the dataset, you may want to read up on a few topics, such as text processing and the JSON format.

- [JSON data format](https://en.wikipedia.org/wiki/JSON)
- Text mining infrastucture in R: http://www.jstatsoft.org/v25/i05/
- CRAN Packages for reading JSON data: [jsonlite](https://cran.r-project.org/web/packages/jsonlite/index.html) [RJSONIO](https://cran.r-project.org/web/packages/RJSONIO/index.html) [rjson](https://cran.r-project.org/web/packages/rjson/index.html)
- CRAN Task View on [Web Technologies](https://cran.r-project.org/web/views/WebTechnologies.html)
- CRAN Task View on [Natural Language Processing](https://cran.r-project.org/web/views/NaturalLanguageProcessing.html)

*Tasks to accomplish*

1. Learn about Yelp and what kinds of data it collects
2. Obtaining the data - Can you download the data and load it in R?
3. Familiarizing yourself with the metadata - What features/variables are included? What data is stored in each of the different files? How can you link the information from the different files together?

*Questions to consider*

1. What do the data look like?
2. Where do the data come from?
3. Can you think of any other data sources that might help you in this project?
4. What are some common issues in the analysis of text data?

---

## Task 1 - Exploratory Analysis

Now that you've read in the data and have familiarized yourself with what exactly are contained in the dataset, it's time to get your hands dirty and to see what kind of information is stored in the dataset. The goal of exploratory data analysis in this case will be to identify a question or a problem that is of interest to you that you think you can answer or solve with the dataset. At this phase there's no need for formal modeling and you may not even look at the entire dataset (perhaps a random sample is sufficient). Try to focus on visualizing different aspects of the data so that you can get a better understanding of the relationships between features.

With this task you want to explore the data sufficiently so that you can develop a question or problem that you want to address with the data. The question that you ask should primarily be (1) of interest to you and should be (2) answerable from the data. Your end goal for this task is to identify a question that satisfies those two criteria.

*Tasks to accomplish*

1. Explore the relationships between different features in each data file.
2. Try linking data files together and explore the relationships between features across data files.
3. Identify interesting outcomes that you may want to predict as part of a prediction question / problem
4. Characterize any missing data that may be present in each of the files
5. Many features incorporate free-text data that may need to be parsed, summarized, or quantified in some way. What is the best way to handle these data?

*Tips and hints*

Consider how you are going to perform your basic exploratory or predictive analyses. Keep in mind that the first n entries of the data set may not be representative. You might want to think about how to sample the data using the `file()` function or the and `readLines()` function to obtain a representative sample.

---

## Task 2 - Specifying Your Question / Problem

This task is simple. You've finished your exploratory analysis of the data and have a sense of what features are there and how they are related to each other. Now is the point where you want to identify a question or a problem that you are interested in addressing with the data. Write down that question in just 1 to 3 sentences so that another person who is as familiar with the dataset as you are would be able to understand and to assess.

As you develop your question, consider the following characteristics:

1. Is the question of interest to *you*?
2. Is there a particular audience (besides yourself) that might be interested in this question? Characterize that audience (i.e. teenagers living in New York, women living in Seattle, etc.)
3. Has the question already been addressed? Even if the question has been addressed, it might not have been done the way *you* would have done it. Researching previous attempts to answer this question may give you some insight into how you might approach the problem.
4. Is the question answerable from the data?
5. How specific is your question? Making a question more specific can often simplify your analysis quite a bit at the expense of possibly making the question less interesting. Balancing the specificity with the "interesting-ness" of your question is something you will have to figure out.

---

## Task 3 - Task 3 - Exploratory Modeling

At this point you need to dig into the data in order answer the question that you specified you wanted to answer. Here you'll need to think about the kinds of models that might be appropriate the answer your question. Are you asking an inferential question? A prediction question? Take care to match the modeling approach with the question type. Here are some things to think about.

*Inferential or causal questions*

1. What is your outcome? Do you have a key predictor that you want to correlate with your outcome?
2. What factors might confound or cloud any associations that you try to estimate or explore?
3. Are there any confounding factors for which you do not have measurements in your dataset? How can you deal with this?
4. How robust are your findings to small changes to the model?

*Prediction questions*

1. Have you split your data into appropriate training and test sets? Are the data adequate for doing this?
2. How good is the error rate of your prediction model? Can it be improved by changing algorithms?
3. Can you add any external data that might improve your predictions?
4. What types of features appear to be most important to prediction skill?
5. Are all types of prediction errors equally important in your problem?

Note that not all of these questions will be relevant to your problem so don't worry if you don't have answers to all of them. They are just questions to consider as you develop your model.

---

## Task 4 - Developing Final Model / Algorithm / Prediction

This task is all about finalizing your analysis so that you can best answer the question you developed earlier on in the project. Make sure that you can develop a coherent story or argument about your problem (you will ultimately need to write up a slide deck and a report).

You might want to consider the following as you finalize your analysis

1. Do you have an answer to your question? It's possible that you didn't answer the question completely, but see the next question.
2. Do you have a reasonable explanation for how your analysis addresses the question you posed? Can you come up with a theory or hypothesis that explains what is going on?
3. Is your work reproducible? Do you have all of the data and code needed for others to reproduce your work?

---

## Task 5 - Report Writing and Slide Deck

The goal of this task is to write a report that can be used as the basis for a final product or perhaps a submission to the Yelp dataset challenge. In addition, you need to create a 5-slide deck using RStudio Presenter tools to describe and promote your analysis.

*Report*

Write a 5-page report using R Markdown that describes your question/problem, how you used the dataset, the analysis you conducted, and the conclusions that you drew from the analysis. Your report **must** have the following sections clearly labelled:

1. Title - A brief description of what you've done
2. Introduction - A description of the question/problem and the rationale for studying it
3. Methods and Data - Describe how you used the data and the type of analytic methods that you used; it's okay to be a bit technical here but clarity is important
4. Results - Describe what you found through your analysis of the data.
5. Discussion - Explain how you interpret the results of your analysis and what the implications are for your question/problem.

*Slide Deck*

Write 5 slides using [RStudio Presenter](https://support.rstudio.com/hc/en-us/articles/200486468-Authoring-R-Presentations) that summarizes your report for a general audience. Explain what the problem you presented is interesting and how your analysis directly addresses that problem.

---

## Task 6 - Evaluation Help Center

Now that you've submitted your final report and slide deck, you can breathe a little bit more easily. Once you've taken some time to enjoy that sense of accomplishment, you'll need to turn your attention to your sixth and final task, evaluating some of your colleagues' submissions. Peer evaluation is critical in all areas of data science. Being able to communicate your ideas and to integrate feedback on them moves things forward and continuously improves your analysis. One key aspect of data analysis is that it's a highly communicative activity that requires interaction with others.  

Take your time during this step. Your colleagues have worked hard on their reports, so they deserve fair and thoughtful evaluation. As you work through the rubric, take notes about the submission's strengths and areas for improvement so that you can provide substantive feedback to accompany your grading decisions.

You are required to evaluate at least 5 submissions before the deadline. Make sure you do all five, or your own project grade will be reduced by 20%. 
