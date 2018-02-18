# Linear.Discriminant.Analysis
Linear Discriminant Analysis to predict Hall of Fame status of baseball players. The data used is also in the directory.
A subset of variables were used.
 H = Hits /n
 HR = Home Runs
 RBI = Return base percentage
 AVG = Batting average
 SLG = Slogging percentage
 OBP = On base percentage

# Interpretation of the results
Coefficients of linear discriminants:
H 1.29222401
HR 2.11940546
RBI -1.62579503
AVG 0.29754155
SLG -0.82724114
OBP 0.05593107

The linear discriminats tell us that, H, HR, AVG and OBP have a positive effect on player’s probability to enter hall of fame, whereas RBI and SLG have a negative impact on player’s probability to enter hall of fame. When we look at the scaled values for each variable, the signs of LDs and scaled values match.

# Interpretation of the histogram
The linear discriminant values for HOFs (green) were mostly positive whereas the linear discriminant values for non-HOFs (pink) were mostly negative with few exceptions. The LD values very strongly discriminated the players into two different groups.
