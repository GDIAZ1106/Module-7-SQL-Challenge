-- SQL Challenge SQL Query File
-- Performed by Gustavo Diaz

-- Deliverable 1:
-- Create databes of employees to retire with titles.
SELECT e.emp_no, 
	e.first_name, 
	e.last_name, 
	tit.title, 
	tit.from_date, 
	tit.to_date,
	e.birth_date
INTO titles_for_retirement
FROM employees AS e
INNER JOIN titles AS tit
   on (e.emp_no = tit.emp_no)
WHERE (e.birth_date) BETWEEN ('1951-01-01')
	AND ('1955-12-31')
ORDER BY e.emp_no, e.birth_date DESC;

-- Check if it works
SELECT * FROM titles_for_retirement

-- Use Dictinct with Orderby to remove duplicate rows
-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.

SELECT DISTINCT ON (tfr.emp_no) tfr.emp_no,
tfr.first_name,
tfr.last_name,
tfr.title,
tfr.birth_date
INTO unique_titles
FROM titles_for_retirement AS tfr
ORDER BY tfr.emp_no, tfr.to_date DESC;

-- Check if it works
SELECT * FROM unique_titles

-- Retrieve number of the number of  employees by their most recent job
-- title who are about to retire.
SELECT COUNT (ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY Count DESC;

-- Check if it works
SELECT * FROM retiring_titles

-- Deliverable 2:
-- Write a query to create a Mentorship Eligibility table that holds the 
-- employees who are eligible to participate in a mentorship program.

-- Create databes of employees elegibles for mentorship
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	e.birth_date,
	de.from_date, 
	de.to_date
INTO employees_complete
FROM employees AS e
INNER JOIN dept_emp AS de
   on (e.emp_no = de.emp_no)
WHERE (e.birth_date) BETWEEN ('1965-01-01')
	AND ('1965-12-31')

-- Adding Titles, eliminating duplicates and emplyees that have left PH 
SELECT DISTINCT ON (ec.emp_no) ec.emp_no,
	ec.first_name, 
	ec.last_name,
	ec.birth_date,
	ti.from_date, 
	ti.to_date,
	ti.title
INTO employees_mentorship
FROM employees_complete AS ec
INNER JOIN titles AS ti
   on (ec.emp_no = ti.emp_no)
WHERE ec.to_date='9999-01-01'
ORDER BY ec.emp_no;

-- Check if it is ok
SELECT * FROM employees_mentorship


-- Analysis performed outside from the requirements of the Challenge

-- Calculating the employees retiring in PH
SELECT SUM (count)
FROM retiring_titles;

-- Double Check Total employees of PH

SELECT DISTINCT ON (e.emp_no) e.emp_no, 
	e.first_name, 
	e.last_name, 
	tit.title, 
	tit.from_date, 
	tit.to_date
INTO total_employees_active
FROM employees AS e
INNER JOIN titles AS tit
   on (e.emp_no = tit.emp_no)
WHERE tit.to_date='9999-01-01';

SELECT COUNT(e.emp_no)
FROM employees AS e;

--- Calculating Mentoring employees positions
SELECT COUNT (em.title), em.title
INTO mentorship_titles
FROM employees_mentorship AS em
INNER JOIN retiring_titles
GROUP BY em.title
ORDER BY Count DESC;

SELECT * FROM employees_mentorship

SELECT COUNT(em.emp_no)
FROM employees_mentorship AS em;

-- Calculate the split among titles for the employees to be mentored
SELECT COUNT (em.title), em.title
INTO mentorship_titles
FROM employees_mentorship AS em
GROUP BY em.title
ORDER BY Count DESC;


-- Check the above
SELECT * FROM mentorship_titles;