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
  Rcode :par(mfrow = c(2,2))
for(i in 1:4) {
  boxplot(iris[,i] ~ iris$Species, main = names(iris)[i])
}


The box plot describes as the petal dimension overlap minimally across the species which states that there is a big difference . The sepal width shows significant overlap which eventually makes it less useful for species differentiation. The difference between Sentosa and Virginca according to the box plot shows that Sentosa provides the lowest variability in all measurement and Virginica shows the most variability , however particularly in petal width . 
Question 4 )  Correlation Analysis: Calculate the correlation between sepal length and width, and petal length and width within each species. What can you infer from the correlation coefficients? Which pairs of variables are most strongly associated within each species?
  Rcode : by(iris[, 1:4], iris$Species, cor)
The correlation analysis states that Sentosa has weak correlations between all variables. While the others (Versicolor and Virginica) has strong positive correlations between sepal length and petal dimensions. This information provides evidence that petal and sepal dimensions are more closely related in Versicolor and Virginica compared to Sentosa. 

Question 5 ) Bivariate Scatter Plots: Create scatter plots to visually examine the relationship between sepal length and width, and petal length and width within each species. Based on these scatter plots, do you see any patterns, trends, or outliers? 
  Rcode :   pairs(iris[1:4], col = iris$Species, pch = 19)
The scatter plots describes that based on the petal dimensions there is a separation between sentosa and the other two species ( Virginica and Versicolor ) . According to the sepal measurements there is a overlap between Versicolor and Virginica . For Versicolor and Virginica according to the scatter plot it is seemed it has strong linear relationships between the petal length and the width. 
Question 6 )  Differentiating Species: Based on your analysis in the previous questions, which of the variables (sepal or petal measurements) appears to best differentiate between the species? Provide a statistical rationale for your answer.
According to the analyses,  length and width of the petal  appear to be the best variables for differentiating between Iris species as supported by the results  that for the petal measurements across the species there is a minimal overlap in boxplots . Also for petal dimensions there is a large difference in means and less overlap in ranges compared to sepal measurements . 
