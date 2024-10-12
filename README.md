# BACKGROUND-ON-THE-IRIS-DATA
Conducting an analysis of the Iris dataset utilizing the R programming language R . Working on the following : 1. Five Number Summary  2. Mean and Standard Deviation 3. Outlier Boxplot Analysis  4. Correlation Analysis  5. Bivariate Scatter Plots 6. Differentiating Species. 

Question : BACKGROUND ON THE IRIS DATA: 
The Iris dataset stands as a cornerstone in the realm of data science and analytics, renowned for its extensive application in educational settings for both teaching and practical learning. This dataset was meticulously gathered by Ronald Fisher, a revered British statistician and biologist, in 1936. Fisher's utilization of the Iris dataset in his ground-breaking work on linear discriminant analysis marked a pivotal moment in statistical science. Linear discriminant analysis, as introduced by Fisher, is a sophisticated statistical technique designed to identify the linear combinations of variables that most effectively differentiate between two or more distinct classes of objects or events.

Comprising 150 recorded samples from three distinct species of the Iris flower—Iris setosa, Iris virginica, and Iris versicolor—the dataset is rich in morphological data. Each sample within the dataset is characterized by four key morphological measurements: the length and width of the sepals and petals, all of which are precisely measured in centimeters.

The primary objective behind the collection of the Iris dataset was to systematically quantify the morphological variations observed among three closely related species of Iris flowers. This endeavor not only contributed significantly to the field of botany but also paved the way for the dataset to become an exemplary model for demonstrating a wide array of techniques in multivariate statistical analysis. Over the years, the Iris dataset has emerged as an indispensable tool in the machine learning and data mining communities. Its simplicity and comprehensiveness make it an ideal dataset for novices to explore fundamental concepts in data analysis, including classification techniques, data visualization, and a plethora of other essential data analysis skills. The enduring relevance and utility of the Iris dataset underscore its significance as a foundational dataset for those embarking on their journey in data science.


  QUESTIONS:

1. Five Number Summary: Generate a five-number summary (minimum, Q1, median, Q3, maximum) for each variable (sepal length, sepal width, petal length, petal width) within each species. What can you infer from these summaries about the distribution of these variables within each species? 

2. Mean and Standard Deviation: Calculate the mean and standard deviation for each variable within each species. How does this information complement the five-number summary from Question 1? 

3. Outlier Boxplot Analysis: Create boxplots for each variable for each species. What can you infer from these boxplots about the distribution and spread of these variables within each species? 

4. Correlation Analysis: Calculate the correlation between sepal length and width, and petal length and width within each species. What can you infer from the correlation coefficients? Which pairs of variables are most strongly associated within each species? 

5. Bivariate Scatter Plots: Create scatter plots to visually examine the relationship between sepal length and width, and petal length and width within each species. Based on these scatter plots, do you see any patterns, trends, or outliers? 

6. Differentiating Species: Based on your analysis in the previous questions, which of the variables (sepal or petal measurements) appears to best differentiate between the species? Provide a statistical rationale for your answer.

Answers : 

Question1 )  Five Number Summary: Generate a five-number summary (minimum, Q1, median, Q3, maximum) for each variable (sepal length, sepal width, petal length, petal width) within each species. What can you infer from these summaries about the distribution of these variables within each species?

 R code :    by(iris[, 1:4], iris$Species, summary) 
     There’s a clear separation in terms of petal dimensions between Sentosa and the other two which is virginica and versicolor  as its more wider . Sentosa also has smaller petal length and width compared to the other . 
Versicolor on the other hand shows more variation than sentosa but less than Virginica . 
Virginica on the other hand  typically has the largest measurements for sepal length, petal length, and petal width.
Question 2 )  Mean and Standard Deviation: Calculate the mean and standard deviation for each variable within each species. How does this information complement the five-number summary from Question 1?
Rcode :  aggregate(. ~ Species, data = iris, FUN = function(x) c(mean = mean(x), sd = sd(x)))

Sentosa has the lowest means for petal dimensions and the  smallest standard deviations, which means it has  consistent petal size. 
Versicolor has  means which is quite intermediate with average standard deviations. 
Virginica has absolutely the highest means for petal dimensions and sepal length, and consist of largest standard deviations which indicates  more variability in these features.

Question3 ) Outlier Boxplot Analysis: Create boxplots for each variable for each species. What can you infer from these boxplots about the distribution and spread of these variables within each species?
Rcode : par(mfrow = c(2,2)) for(i in 1:4) { boxplot(iris[,i] ~ iris$Species, main = names(iris)[i]) }
The box plot describes as the petal dimension overlap minimally across the species which states that there is a big difference . The sepal width shows significant overlap which eventually makes it less useful for species differentiation. The difference between Sentosa and Virginca according to the box plot shows that Sentosa provides the lowest variability in all measurement and Virginica shows the most variability , however particularly in petal width . 
Question 4 )  Correlation Analysis: Calculate the correlation between sepal length and width, and petal length and width within each species. What can you infer from the correlation coefficients? Which pairs of variables are most strongly associated within each species?
Rcode : by(iris[, 1:4], iris$Species, cor)
The correlation analysis states that Sentosa has weak correlations between all variables. While the others (Versicolor and Virginica) has strong positive correlations between sepal length and petal dimensions. This information provides evidence that petal and sepal dimensions are more closely related in Versicolor and Virginica compared to Sentosa. 

Question 5 ) Bivariate Scatter Plots: Create scatter plots to visually examine the relationship between sepal length and width, and petal length and width within each species. Based on these scatter plots, do you see any patterns, trends, or outliers? 
Rcode :   pairs(iris[1:4], col = iris$Species, pch = 19)
The scatter plots describes that based on the petal dimensions there is a separation between sentosa and the other two species ( Virginica and Versicolor ) . According to the sepal measurements there is a overlap between Versicolor and Virginica . For Versicolor and Virginica according to the scatter plot it is seemed it has strong linear relationships between the petal length and the width. 
Question 6 )  Differentiating Species: Based on your analysis in the previous questions, which of the variables (sepal or petal measurements) appears to best differentiate between the species? Provide a statistical rationale for your answer.
According to the analyses,  length and width of the petal  appear to be the best variables for differentiating between Iris species as supported by the results  that for the petal measurements across the species there is a minimal overlap in boxplots . Also for petal dimensions there is a large difference in means and less overlap in ranges compared to sepal measurements . 


