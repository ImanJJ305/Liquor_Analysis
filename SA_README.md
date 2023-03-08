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
-Embedding layer with input shape (None, 120) and output shape (None, 120, 16). This layer takes integer-encoded vocabulary and converts them into dense vectors of fixed size. The layer has 640,000 trainable parameters.
-GlobalAveragePooling1D layer with output shape (None, 16). This layer computes the average of the embeddings over the time dimension (120 in this case) and returns a fixed-length output vector. This layer has no trainable parameters.
-Dense layer  with output shape (None, 6). This is a fully connected layer with 102 trainable parameters while the other Dense layer has an output shape (None, 1). This final output layer has 7 trainable parameters.
The model has a total of 640,109 parameters, all of which are trainable.

### Model evaluation and confusion matrix.
After evaluating and running the confusion matrix, here below the results can be see:

![Evaluation](/images/Evaluation.PNG)

-No instances were correctly predicted to belong to the negative sentiment class (true negatives). This means that all instances that actually belonged to the negative sentiment class were incorrectly predicted as positive.
-8919 instances were incorrectly predicted to belong to the negative sentiment class when they actually belonged to the positive sentiment class (false negatives). This means that there were 8919 instances that actually belonged to the positive sentiment class, but were predicted as negative.
-21267 instances were correctly predicted to belong to the positive sentiment class (true positives). This means that there were 21267 instances that actually belonged to the positive sentiment class, and were correctly predicted as positive.
-No instances were incorrectly predicted to belong to the negative sentiment class when they actually belonged to the positive sentiment class (false positives). This means that all instances that actually belonged to the positive sentiment class were correctly predicted as positive.

Overall, the sentiment analysis model appears to have performed better at identifying positive sentiment (higher reviews) than negative sentiment, as evidenced by the lack of true negatives and the relatively high number of false negatives. Therefore, answering the question: **Does the description of the wines given in the dataset lead to a higher review/points?**, Yes, it does!!

## Running Neural Network model in the Wine Predictor but this time adding the 'Description' column.

![Wine_predictor_description](/images/Wine_predictor_description.PNG)

Let's compare results!!