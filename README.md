# Module-7-Challenge

# Silver Tsunami - Project

# Overview of the analysis: 

## Purpose of this analysis.

Pewlett Hackard is a sucessful company that is facing a generational change insde the organization. They recognize to have an issue on organizing the information of the staff. So far they have only a set isolated csv files that do not allow any report generation that could help to be ready for this challenging situation.

The purpose of the analysis is to create a set of data based with a logical Entity Relational Diagram that could attend several request from the top managment of the organization including, but not limited to, a list of the employess that are in retirement age and a list of probable sucessors that could be mentored to replace them.

We have designed the following ERD coming from the tables that Pewlett Hackard have:
<p align = "center">
  <img src="https://github.com/GDIAZ1106/Module-7-SQL-Challenge/blob/main/Resources/ERD_Tables.png" width="800" height="400" />

# Results: 

  According to our analysis this are the most important topics to work in:
  
- Pewlett Hackard is facing in the next year the retirement of 90.398 employees which represent 37,64% of the total of employees and is spread among different roles through out the organization as follows: 
<p align = "center">
  <img src="https://github.com/GDIAZ1106/Module-7-SQL-Challenge/blob/main/Resources/Open_Positions_Per_Title.png" width="200" height="200" />
  
  Click [here](https://github.com/GDIAZ1106/Module-7-SQL-Challenge/blob/main/Exported%20CSV/unique_titles.csv) to access to the full database of employees in retirement situation (you will probably have to select "raw" view due to the size of the file).

- Pewlett Hackard is decided to start a mentoring program for those employees born in 1965 to mentor for the people leaving. The total amount of the employees that fulfill that conditions accounts for 1.549 employees and they are spread on the following different functions:
 <p align = "center">
  <img src="https://github.com/GDIAZ1106/Module-7-SQL-Challenge/blob/main/Resources/Employees_to_mentor_by_title.png" width="200" height="200" />
   
  Click [here](https://github.com/GDIAZ1106/Module-7-SQL-Challenge/blob/main/Exported%20CSV/mentorship_eligibilty.csv) to access to the full database of employees that would be mentored (you will probably have to select "raw" view due to the size of the file).

- As it is clear from the charts above the mentorship program would not be enough for the considerable amount of employees retiring in the near future. It is particulary challenging on positions that require certain expertise such as engineers where there are only 169 to mentor and 29.414 retiring. Similar case with the Technique Leaders where there is a need due to retires of 4.502 and only 77 to mentor. It is clear that the mentorship program should be expanded to cover the big number of position being left in the near future.
   
- It could be recomendable to hire external companies that have expertise on this type of situations to help in the development of a succesion plan. A deeper analysis of the information related to the staff is needed in order to have a plan for avoiding events like this happening in the future. 
   
   
# Summary: 

Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

How many roles will need to be filled as the "silver tsunami" begins to make an impact?

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
