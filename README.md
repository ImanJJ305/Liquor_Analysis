# Wine_Analysis_Neural_Network_Model
## Overview
This project aims to create a neural network that can predict wine review scores based on various wine characteristics. The process involves data collection, preprocessing, and model development. By successfully executing this project, we aim to create a robust neural network with far-reaching applications in artificial intelligence and machine learning.

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

