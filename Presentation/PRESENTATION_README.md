# Liquor_Sales_Analysis

  Data Sample: https://www.kaggle.com/datasets/zynicide/wine-reviews

## Overview of Project

### Topic 
  Selecting which wine to increase production on, and determining the association of reviews and descriptors from data scraped from WineEnthusiast during the week of November 22nd, 2017. This topic was selected as we all wanted to work with a product or data type that we were either familiar with or would be interested in learning more about. Once we stumbled upon this data set our group agreed that this would be an interesting subject to evaluate and decided to select this as our data source for the assignment.
  
### Description of Data
  The data being used for this analysis consists of a dataset containing information scrapped from [Wine Enthsiasts](https://www.winemag.com/?s=&drink_type=wine).The datasets contain 150k wine reviews from the source. There are thirteen columns within the file. The columns are described by [the originator of the data](https://github.com/zackthoutt/wine-deep-learning) below: 
 - Points: the number of points WineEnthusiast rated the wine on a scale of 1-100 (though they say they only post reviews for wines that score >=80)
 - Title: the title of the wine review, which often contains the vintage if you're interested in extracting that feature
 - Variety: the type of grapes used to make the wine (ie Pinot Noir)
 - Description: a few sentences from a sommelier describing the wine's taste, smell, look, feel, etc.
 - Country: the country that the wine is from
 - Province: the province or state that the wine is from
 - Region 1: the wine growing area in a province or state (ie Napa)
 - Region 2: sometimes there are more specific regions specified within a wine growing area (ie Rutherford inside the Napa Valley), but this value can sometimes be blank
 - Winery: the winery that made the wine
 - Designation: the vineyard within the winery where the grapes that made the wine are from
 - Price: the cost for a bottle of the wine
 - Taster Name: name of the person who tasted and reviewed the wine
 - Taster Twitter Handle: Twitter handle for the person who tasted ane reviewed the wine
  
### Questions
  1. Which wine should we choose to produce more of based on the reviews of our consumers. 
  2. Which winrey are we going to work with based on the variety we select and the reviews provided. 
  3. Optional question: What price range is most liked by consumers. 

Machine Learning Questions: 
  1. Can we predict if consumers will purchase the type of wine we choose to produce based on their reviews?
  2. Optional Question (we've decided not to answer): Can we predict the scores of future wine tastings based on previous ones? 
  3. Do popular buzz words lead to higher reviews? (Break down the description of the wines to find the most popular words used to describe the alcohol and determine if these popular words associate to higher reviews)
  
  ### Description of Data Exploration Phase
As mentioned above when preparing to work on this project we were insterested in workin with a product or data type that we were either familiar with or would be interested in learning more about. As a group we decided to take time individually to search for data in various sources, like Kaggle.com, Datasets-Hugging Face, Google Public Datasets, UCI ML Repo, and Data Gov, and then regroup with not only the data but an idea of the type of projuect we wanted to conduct. In doing so this allowed us to brainstorm with multiple ideas before landing on the one we've selected. After agreeing on the general idea of making decisions using data related to spirits we dispersed once more to find a data source that was large enough to explore and make decisions on. Once we came across our desired source we went through the files together analyzing the number of columns, rows, the meaning behind each column, and determining how we wanted to clean and analyze the data for our presentation. We finally settled on a topic, divided our responsibilities, and began the analyis phase of the project. 

### Description of Analysis Phase
Thw analysis phase of the project was conducted seperately by each individual team member and relied on the stregnths of each member. The data cleaning, filtering to answer initial questions, table and database building, and machine learning were all conducted by sepereate members of the group and are described in the main folder under the read me. Once we completed a portion of the project we would regroup to discuss how we'd done so, why, and if the actions taken were appropriate for our data. We used languages like Python or SQL, and tools like pgAdmin to perform our analysis of the data. 

### Recommendations for Future Analysis
In the future we would like to exapnd on our understanding of the industry by attempting to explore other alcoholic beverages and how our products would compare to those within the industry as we believe that the wine would be competing with these options as well. 
