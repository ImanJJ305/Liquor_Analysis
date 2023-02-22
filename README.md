# Liquor_Sales_Analysis

  Data Sample: https://www.kaggle.com/datasets/zynicide/wine-reviews

## Overview of Project

### Topic 
  Selecting which wine to increase production on, and determining the association of reviews and descriptors from data scraped from WineEnthusiast during the week of November 22nd, 2017. 
  
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
  3. Optional: What price range is most liked by consumers. 

Machine Learning Questions: 
  1. Will consumers purchase the type of wine we choose to produce based on their reviews?
  2. Do popular buzz words lead to higher reviews? (Break down the description of the wines to find the most popular words used to describe the alcohol and determine if these popular words associate to higher reviews)
  
  
