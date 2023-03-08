# Wine_Analysis_Neural_Network_Model
## Overview
This project is being conducted to assist a fictional company in selecting a wine to increase production on, and determining the relationship between reviews and descriptors from data scraped from WineEnthusiast during the week of November 22nd, 2017. This topic was selected as we all wanted to work with a product or data type that we were either familiar with or would be interested in learning more about. Once we stumbled upon this data set our group agreed that this would be an interesting subject to evaluate and decided to select this as our data source for the assignment.

In addition to determing the production increases, this project aims to create a neural network that can predict wine review scores based on various wine characteristics. The process involves data collection, preprocessing, and model development. By successfully executing this project, we aim to increase the sales and growth of this fictional company as well as create a robust neural network with far-reaching applications in artificial intelligence and machine learning.

## Cleaning the Data

To ensure the functionality of the neural network, the initial step involved data cleaning, which included addressing null values present in the data. One crucial aspect of this process was addressing the null values in the region_2 column. Since some regions did not have a second region associated with them, this column had multiple null values. To rectify this, I devised a solution to replace all null values in the region_2 column with "none," indicating that no second region was associated with that wine.

After addressing the null values, the next step involved adding binning to certain variables with excessive unique values, specifically the region and winery columns. A closer analysis of these columns indicated too many unique values, which could hinder the neural network's ability to process the data efficiently. The images further highlighted this, which showed many unique values in both columns. Therefore, a binning approach was adopted to resolve this issue, where values that did not appear frequently were aggregated and labeled "other." This enabled the neural network to process the data by simplifying the number of unique values in the region and winery columns.


### Image of Region Counts
<img width="701" alt="Screenshot 2023-02-23 at 10 13 40 PM" src="https://user-images.githubusercontent.com/112649072/221083152-59737ec2-53ff-411f-b083-26bcd83a4efa.png">

### Image of Winery Counts
<img width="713" alt="Screenshot 2023-02-23 at 10 14 43 PM" src="https://user-images.githubusercontent.com/112649072/221083254-5b2097a1-e287-4939-82b8-66229a8f89ed.png">

The subsequent step involved modifying the description column containing excessively long descriptions. To streamline the data and make it more manageable, a solution was devised to identify the 16 most common wine descriptors. A for loop was then used to scan each description and determine if any of the 16 chosen words were present. Following this, only the adjectives were extracted from the description, significantly simplifying the data and making it easier to work with.


### Finding Adjectives in the Descriptions Column
<img width="1153" alt="Screenshot 2023-02-23 at 10 15 46 PM" src="https://user-images.githubusercontent.com/112649072/221083546-3d303a9a-6adf-4076-b437-6c36d851e154.png">
In the final step, the Designation column was dropped as it was deemed irrelevant to predicting the wine reviews.

## Designing an ERD and Creating a Database

Using SQL, PostgreSQL, and pgAdmin, we performed an analysis on the wine data in order to better understand how different wines are sorted into different categories, as well as which factors are considered when writing a review about a certain wine. After cleaning the data, it was sorted into different categories depending on how a potential user would want to group certain wines. These categories include Variety, Description, Score, Price, Location, and Taster Information, as shown in the ERD below and the SQL file in our project repository.

#### Dataset ERD

<img width="433" alt="WineryDB" src="https://user-images.githubusercontent.com/113553238/222619326-18eb9c79-3dd4-424f-8d43-a9a3ee799e10.png">

#### Data Analysis in SQL

<img width="612" alt="Screen Shot 2023-03-08 at 12 24 35 PM" src="https://user-images.githubusercontent.com/113553238/223785735-fe3092c7-c791-418c-8041-66acdd9cd83b.png">
<img width="610" alt="Screen Shot 2023-03-08 at 12 24 51 PM" src="https://user-images.githubusercontent.com/113553238/223785723-ce8b51f8-2013-443f-a0c7-7238a7a8952d.png">

#### Wine by Description

<img width="632" alt="Screen Shot 2023-03-08 at 11 53 12 AM" src="https://user-images.githubusercontent.com/113553238/223781492-458d1f7d-5e62-4d81-aa8b-b3e1784d2410.png">

#### Wine by Location

<img width="1046" alt="Screen Shot 2023-03-08 at 11 57 44 AM" src="https://user-images.githubusercontent.com/113553238/223781491-9ee76d17-9c18-4466-ba16-8f0a6ffa4be0.png">

#### Wine by Price

<img width="341" alt="Screen Shot 2023-03-08 at 11 58 56 AM" src="https://user-images.githubusercontent.com/113553238/223781490-bb4cfa99-5e29-46e7-9a79-b8acf0f8f82a.png">

#### Wine by Score

<img width="373" alt="Screen Shot 2023-03-08 at 11 59 50 AM" src="https://user-images.githubusercontent.com/113553238/223781486-a7311937-2e6d-42d0-88c1-ce4868687269.png">

#### Wine by Taster_Info

<img width="522" alt="Screen Shot 2023-03-08 at 12 00 56 PM" src="https://user-images.githubusercontent.com/113553238/223781481-bca7791f-e30e-4bc7-aaab-822be7a22241.png">

#### Wine by Variety

<img width="442" alt="Screen Shot 2023-03-08 at 12 01 50 PM" src="https://user-images.githubusercontent.com/113553238/223781476-47b31511-e624-4c35-aaee-4a2aa5a70303.png">

This information will be used in order to design a simple website where users can apply these filters to a table of wine data in order to produce a recommendation based on those filters. For example, if a user wants to know about any floral, bright Pinot Grigios under $65, they can apply those filters to our table to create a list of wines that match those terms according to the dataset.

## Machine Learning 

To begin the machine learning process, the first step involved encoding all variables that were not in a numerical format. A for loop was utilized for this task, as seen in the image provided

### OneHotEncoder
<img width="1147" alt="Screenshot 2023-02-23 at 10 18 49 PM" src="https://user-images.githubusercontent.com/112649072/221083775-dce1f7e9-ad5b-470c-b299-3874f88ca53c.png">


After encoding non-numerical variables, the data was split into the y variable (wine review score) and the x variable (all other variables). The data were then scaled to ensure accurate data processing, given that some variables had significantly larger values than others.

### Train,Test,Split and Scaling
<img width="1156" alt="Screenshot 2023-02-23 at 10 19 48 PM" src="https://user-images.githubusercontent.com/112649072/221083925-422a228a-bf14-4423-b5d9-305194f18b9f.png">

The next step was to build the neural network model. Two hidden layers were created with 750 and 250 neurons, respectively. After observing that adding more neurons or layers led to a worse score, these values were determined. The relu activation function was selected for the same reason.
Dropout layers were added to prevent overfitting, and the learning rates were adjusted, improving the neural network's performance.

### Building the Neural Network
<img width="980" alt="Screenshot 2023-02-23 at 10 21 04 PM" src="https://user-images.githubusercontent.com/112649072/221084028-cc941b53-1594-4cce-99d1-a47d30e5af5c.png">

To further prevent overfitting, Early Stopping was implemented in the neural network model. This approach allowed the neural network to become as strong as possible while also stopping it from overfitting. Early Stopping is a technique that automatically stops the training process when the neural network is no longer improving on the validation set.

The next step was to compile the neural network model. Again, the MAE (Mean Absolute Error) metric was chosen as the loss function since it was the most appropriate for the wine review score data.
By selecting MAE as the loss function, the output of the neural network model would represent the value of the wine review score, which was the target variable. Compiling the neural network model ensured that it was optimized to accurately predict wine review scores, with the MAE metric serving as a reliable indicator of its performance.

The final step was to train the neural network model using the data and let it repeat the process of using the best weights and random weights to ensure the neural network found the optimal weights for predicting the wine review scores.
Once the optimal weights were found, the model's performance was evaluated using the test variables. Based on the MAE score, the neural network model could accurately predict wine review scores with an average deviation of 1.82 points. Additionally, the loss of the model was determined to be 10.16, indicating a robust and reliable prediction of wine review scores.

### Training the Data
<img width="976" alt="Screenshot 2023-02-23 at 10 21 36 PM" src="https://user-images.githubusercontent.com/112649072/221084104-b8a417c3-38f6-4587-a478-61175cced326.png">

### Loss and Accuracy Score
<img width="982" alt="Screenshot 2023-02-23 at 10 22 12 PM" src="https://user-images.githubusercontent.com/112649072/221084163-0be3d2b2-ca71-4152-82bf-ac960824f0cd.png">

### Prediction vs Actual Value
<img width="205" alt="Screenshot 2023-02-23 at 10 29 57 PM" src="https://user-images.githubusercontent.com/112649072/221085158-2e88cf9e-2652-4295-8d7f-d52f1e6618d6.png">

## Sentiment Analysis_ Another approach to this dataset
 
A Sentiment Analysis technique was applied to answer if the description of the wines given in the dataset lead to a higher review/points.

For this reason, the 'description', 'price', and 'points' columns were retrieved from the dataframe to work on the ML model. Based on the points values, a 'sentiment' column was created to store the positive and negative sentiments being the positive ones  those wines with reviews over 90 points, so the negative were the remaining ones.

![Sentiment](/images/Sentiment.PNG)  

### Tokenizing 'Description' into values- (Converting text data into sequences of integers).

This step consists in tokenize (convert) the texts into numbers, removing all the punctuations and sets the texts into space-separated organized forms.
Later on, the value for the vocabulary, embedding dimension and value of oov_token were set. This oov_token was added to replace any unknown words and avoid throwing them out instead.
80% of data were collected for training purposes and the remaining one for testing.

![Tokenizing](/images/Tokenizing.PNG)

### Mergin price with description and run the Machine Learning model.

After tokenize the 'description' column into values and pad them, then this data was merged along the price since only one feature in this case is not relevant for running the model.

![Combining_run](/images/Combining_run.PNG)

![Model_summary](/images/Model_summary.PNG)

For layers, these ones were used:
-*Embedding layer with input shape (None, 120) and output shape (None, 120, 16). This layer takes integer-encoded vocabulary and converts them into dense vectors of fixed size. The layer has 640,000 trainable parameters.
-*GlobalAveragePooling1D layer with output shape (None, 16). This layer computes the average of the embeddings over the time dimension (120 in this case) and returns a fixed-length output vector. This layer has no trainable parameters.
-*Dense layer  with output shape (None, 6). This is a fully connected layer with 102 trainable parameters while the other Dense layer has an output shape (None, 1). This final output layer has 7 trainable parameters.
The model has a total of 640,109 parameters, all of which are trainable.

### Model evaluation and confusion matrix.
After evaluating and running the confusion matrix, here below the results can be see:

![Evaluation](/images/Evaluation.PNG)

-*No instances were correctly predicted to belong to the negative sentiment class (true negatives). This means that all instances that actually belonged to the negative sentiment class were incorrectly predicted as positive.

-*8919 instances were incorrectly predicted to belong to the negative sentiment class when they actually belonged to the positive sentiment class (false negatives). This means that there were 8919 instances that actually belonged to the positive sentiment class, but were predicted as negative.

-*21267 instances were correctly predicted to belong to the positive sentiment class (true positives). This means that there were 21267 instances that actually belonged to the positive sentiment class, and were correctly predicted as positive.

-*No instances were incorrectly predicted to belong to the negative sentiment class when they actually belonged to the positive sentiment class (false positives). This means that all instances that actually belonged to the positive sentiment class were correctly predicted as positive.

Overall, the sentiment analysis model appears to have performed better at identifying positive sentiment (higher reviews) than negative sentiment, as evidenced by the lack of true negatives and the relatively high number of false negatives. Therefore, answering the question: **Does the description of the wines given in the dataset lead to a higher review/points?**, Yes, it does!!

## Running Neural Network model in the Wine Predictor but this time adding the 'Description' column.

![Wine_predictor_description](/images/Wine_predictor_description.PNG)

Let's compare results!!

## Wine Selector Website

An additional aspect of this project was to create a website using JavaScript and HTML that allows users to filter through the WineEnthusiast data and select a wine according to their specific tastes. You are able to select some or all of the categories and type whatever you like, and the selector tool will draw from the dataset and show you all or any of the wines that match your search.

Below are screenshots of the selector tool:


<img width="1160" alt="Screen Shot 2023-03-08 at 11 30 13 AM" src="https://user-images.githubusercontent.com/113553238/223774810-5407bd80-8283-4c87-8829-bbc5451415d6.png">
<img width="1131" alt="Screen Shot 2023-03-08 at 11 32 51 AM" src="https://user-images.githubusercontent.com/113553238/223774793-52204a58-afbb-436d-bd6d-b2fc4fa4160b.png">
<img width="1206" alt="Screen Shot 2023-03-08 at 11 33 29 AM" src="https://user-images.githubusercontent.com/113553238/223774785-b4db13ae-e153-438e-b592-40a347aee704.png">



