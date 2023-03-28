# App-Review-Analysis-using-Python

### Problem Statement
Google Play Store team is about to launch a new feature wherein, certain apps that are promising, are boosted in visibility. The boost will manifest in multiple ways including higher priority in recommendations sections (“Similar apps”, “You might also like”, “New and updated games”). These will also get a boost in search results visibility.  This feature will help bring more attention to newer apps that have the potential.

The problem is to identify the apps that are going to be good for Google to promote. App ratings, which are provided by the customers, is always a great indicator of the goodness of the app.

1. Check for null values in the data. Get the number of null values for each column.
2. Drop records with nulls in any of the columns. 
3. Variables seem to have incorrect type and inconsistent formatting. You need to fix them: 

  a. Size column has sizes in Kb as well as Mb. To analyze,    you’ll need to convert these to numeric.

    i. Extract the numeric value from the column

    ii. Multiply the value by 1,000, if size is mentioned in Mb

  b. Reviews is a numeric field that is loaded as a string field. Convert it to numeric (int/float).

  c. Installs field is currently stored as string and has values  like 1,000,000+: 

    i. Treat 1,000,000+ as 1,000,000

    ii. Remove ‘+’, ‘,’ from the field, convert it to integer
4. Price field is a string and has $ symbol. Remove ‘$’ sign, and convert it to numeric.
5. Sanity Check:
  
  a.Average rating should be between 1 and 5 as only these values are allowed on the play store. Drop the rows that have a value outside this range.
  
  b. Reviews should not be more than installs as only those who installed can review the app. If there are any such records, drop them.
  
  c. For free apps (type = “Free”), the price should not be >0. Drop any such rows.

6. Are there any outliers? Think about the price of usual apps on Play Store.
Are there any apps with very high number of reviews?

7. How are the ratings distributed? Is it more toward higher ratings?

8. Make boxplot for Ratings vs. Category.

9. Make boxplot for Rating vs. Content Rating.

10. Make histogram for Rating vs. Reviews.

11. Make a jointplot for rating vs. price.

12. Make a correlation heatmap.

13. Find out the different percentiles – 10, 25, 50, 70, 90, 95, 99.

14. Decide a threshold as cutoff for outlier and drop records having values more than that.
