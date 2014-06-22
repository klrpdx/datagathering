---
title: "CodeBook"
author: "Ken Richards"
date: "June 22, 2014"
output: html_document
---

#UCI HAR Tidy Dataset
##Overview
Quoted from the class assignment description:

> One of the most exciting areas in all of data science right now is wearable computing...
> Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
> The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
> A full description is available at the [site where the data was obtained.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


##Tables
There is one table produced summarizing the data described above:

###tidyData
A tidy dataset produced by combining the test and train measurement datasets from the raw files and ordering them by subject ID and activity description. This data is grouped by subject and activity and the mean taken for all values of each activity for each subect. The columns:

1. Row number
2. Subject Id
3. Activity description. One of Standing, Sitting, Laying, Walking, Walking Downstairs, Walking Upstairs
4. tBodyAcc-mean()-X
5. tBodyAcc-mean()-Y
6. tBodyAcc-mean()-Z
7. tBodyAcc-std()-X
8. tBodyAcc-std()-Y
9. tBodyAcc-std()-Z
10. tGravityAcc-mean()-X
11. tGravityAcc-mean()-Y
12. tGravityAcc-mean()-Z
13. tGravityAcc-std()-X
14. tGravityAcc-std()-Y
15. tGravityAcc-std()-Z
16. tBodyAccJerk-mean()-X
17. tBodyAccJerk-mean()-Y
18. tBodyAccJerk-mean()-Z
19. tBodyAccJerk-std()-X
20. tBodyAccJerk-std()-Y
21. tBodyAccJerk-std()-Z
22. tBodyGyro-mean()-X
23. tBodyGyro-mean()-Y
24. tBodyGyro-mean()-Z
25. tBodyGyro-std()-X
26. tBodyGyro-std()-Y
27. tBodyGyro-std()-Z
28. tBodyGyroJerk-mean()-X
29. tBodyGyroJerk-mean()-Y
30. tBodyGyroJerk-mean()-Z
31. tBodyGyroJerk-std()-X
32. tBodyGyroJerk-std()-Y
33. tBodyGyroJerk-std()-Z
34. tBodyAccMag-mean()
35. tBodyAccMag-std()
36. tGravityAccMag-mean()
37. tGravityAccMag-std()
38. tBodyAccJerkMag-mean()
39. tBodyAccJerkMag-std()
40. tBodyGyroMag-mean()
41. tBodyGyroMag-std()
42. tBodyGyroJerkMag-mean()
43. tBodyGyroJerkMag-std()
44. fBodyAcc-mean()-X
45. fBodyAcc-mean()-Y
46. fBodyAcc-mean()-Z
47. fBodyAcc-std()-X
48. fBodyAcc-std()-Y
49. fBodyAcc-std()-Z
50. fBodyAccJerk-mean()-X
51. fBodyAccJerk-mean()-Y
52. cfBodyAccJerk-mean()-Z
53. fBodyAccJerk-std()-X
54. fBodyAccJerk-std()-Y
55. fBodyAccJerk-std()-Z
56. fBodyGyro-mean()-X
57. fBodyGyro-mean()-Y
58. fBodyGyro-mean()-Z
59. fBodyGyro-std()-X
60. fBodyGyro-std()-Y
61. fBodyGyro-std()-Z
62. fBodyAccMag-mean()
63. fBodyAccMag-std()
64. fBodyBodyAccJerkMag-mean()
65. fBodyBodyAccJerkMag-std()
66. fBodyBodyGyroMag-mean()
67. fBodyBodyGyroMag-std()
68. fBodyBodyGyroJerkMag-mean()
69. fBodyBodyGyroJerkMag-std()
