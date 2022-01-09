# Module-7-Challenge

# Silver Tsunami - Project

# Overview of the analysis: 

## Purpose of this analysis.

Pewlett Hackard is a successful company that is facing a generational change inside the organization. They recognize to have an issue on organizing the information of the staff. So far they have only a set isolated csv files that do not allow any report generation that could help to be ready for this challenging situation.

The purpose of the analysis is to create a set of data based with a logical Entity Relational Diagram that could attend several request from the top management of the organization including, but not limited to, a list of the employees that are in retirement age and a list of probable successor that could be mentored to replace them.

We have designed the following ERD coming from the tables that Pewlett Hackard have:
<p align = "center">
  <img src="https://github.com/GDIAZ1106/Module-7-SQL-Challenge/blob/main/Resources/ERD_Tables.png" width="800" height="400" />

# Results: 

  According to our analysis this are the most important topics to work in:
  
- Pewlett Hackard is facing in the next year the retirement of 90.398 employees which represent 37,64% of the total of employees and is spread among different roles throughout the organization as follows: 
<p align = "center">
  <img src="https://github.com/GDIAZ1106/Module-7-SQL-Challenge/blob/main/Resources/Open_Positions_Per_Title.png" width="200" height="200" />
  
  Click [here](https://github.com/GDIAZ1106/Module-7-SQL-Challenge/blob/main/Exported%20CSV/unique_titles.csv) to access to the full database of employees in retirement situation (you will probably have to select "raw" view due to the size of the file).

- Pewlett Hackard is decided to start a mentoring program for those employees born in 1965 to mentor for the people leaving. The total amount of the employees that fulfill that conditions accounts for 1.549 employees and they are spread on the following different functions:
 <p align = "center">
  <img src="https://github.com/GDIAZ1106/Module-7-SQL-Challenge/blob/main/Resources/Employees_to_mentor_by_title.png" width="200" height="200" />
   
  Click [here](https://github.com/GDIAZ1106/Module-7-SQL-Challenge/blob/main/Exported%20CSV/mentorship_eligibilty.csv) to access to the full database of employees that would be mentored (you will probably have to select "raw" view due to the size of the file).

- As it is clear from the charts above the mentorship program would not be enough for the considerable number of employees retiring in the near future. It is particularly challenging on positions that require certain expertise such as engineers where there are only 169 to mentor and 29.414 retiring. Similar case with the Technique Leaders where there is a need due to retires of 4.502 and only 77 to mentor. It is clear that the mentorship program should be expanded to cover the big number of positions being left in the near future.
   
- It could be recommendable to hire external companies that have expertise on this type of situations to help in the development of a succession plan. A deeper analysis of the information related to the staff is needed in order to have a plan for avoiding events like this happening in the future. 
   
 
# Summary: 

Pewlett Hackard is facing a very challenging situation. The roles that have to be replaced account for 90.308 positions in the next 5 years, which shows a pretty old staff. 
There are seven different roles to cover which is not something easy to cover. The mentors are not enough and the qualifiers to select them should be expanded. 

It would be important to have the mentors analyzed by current role so PH could check that all the necesary roles are being covered by the selected mentors. This could be done by using the following [code](https://github.com/GDIAZ1106/Module-7-SQL-Challenge/blob/main/Resources/Code%201.txt) which is ready to implement on the Query submitted.  
   
It is also very important for PH to have an aging of the staff contains the amount of employees of each year they have. That could be a good proxy of the people retiring in each year. The code to perform that task is on this [link](https://github.com/GDIAZ1106/Module-7-SQL-Challenge/blob/main/Resources/Code%202.txt) and is ready to implement on the Query submitted. 
   
By looking at the outcome of the aging it is clear that PH have not being hiring young employees for a long time and hiring young new employees would be critical for the future success of the organization.  

