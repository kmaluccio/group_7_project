# group_7_project

Alyssa Stringer, Juana Suarez, Kelly Maluccio

## Project Content

Below is a list answering basic questions about our project and describing our plan for the project.

Selected topic: 
- Predicting disease based on air quality in the U.S. from 500 cities.

Reason for topic: 
- Each of our group members are health conscious and know someone close to us who suffers from health issues, whether it be a disease or obesity or mental health. This led us to a discussion about factors affecting health or disease. So, we thought it would be interesting to see if air quality or income data predict different diseases. 

Description of source data: 
- We were able to find data for the diseases on the CDC website. The air quality and income data was found on Kaggle. We sorted through many data sites to find health data based on different diseases as well as air quality data. The air quality data also has income information that we can use as another variable in our regression model to see if we can predict disease from these factors. We were able to merge this data by the city location. Therefore, if we can predict disease based on air quality or income, we can look at which cities are affected the most or the least.
- Additional Resources: Follow this link to read an article that describes particle matter (PM) which can be found in our dataset. The article also discusses the effect of PM on the air quality.
[Particle Matter and Health](https://ww2.arb.ca.gov/resources/inhalable-particulate-matter-and-health)

Question(s) we want to answer: 
- Can we predict disease, such as diabetes or cancer, based on the city's air quality and/or income?


NOTE: All information will be put into presentation form (Google slides) during the next segment of the project.

## GitHub and Communication

For our project, we agreed to work together during class time and designate roles with specific tasks so that each group member has a fair amount of work to complete. Some tasks take more effort and need to be completed as a team or with at least two group members. Our communication is primarily through our Slack group chat and we also have a shared folder in Google Drive where we are keeping a notes document about the project and tasks that we have completed or need to complete and we will create our presentation slides in this folder. We have created the GitHub repository and each of us created our own branch for the first segment. We have agreed to message in slack anytime we work on something for the project or if we make any commits to our branch so that the group knows and can check the GitHub page for updates. We will not merge any of our branches to the main branch until the code runs without error and we all agree with the files. Lastly, we have also met on zoom and we will meet virtually over zoom if we want to or need to meet outside of class time/office hours.

## Machine Learning Model

According to [this study](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5583950/#:~:text=The%20positive%20associations%20between%20PM,25%25%20in%20the%20long%E2%80%90term), PM 2.5 is the most significantly linked to diabetes. The Results section says, "every 10-μg/m3 increase in PM2.5, the risk of type 2 diabetes mellitus would increase by 25% in the long-term exposure." Our group looked at PM 2.5 and PM 10 data to see if it would predict the percentage of the population with diabetes. 

The formula for multiple linear regression is:

![formula](https://github.com/kmaluccio/group_7_project/blob/main/images/regression-formula.png)

In our multiple linear regression model our data points are the following: 

Y = 500_diabetes [“Data_Value”]

X1 = WHO_AirQuality_Database [“pm10”]

X2 = WHO_AirQuality_Database [“pm25”]

In the multiple regression model we ran, we found 17.9% of the population will have diabetes if the pm is 18 and the pm 2.5 is 14. Our root mean square error was 4.27.
