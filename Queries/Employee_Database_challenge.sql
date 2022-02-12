SELECT employees.emp_no, employees.first_name, employees.last_name
INTO retiring_employees
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
;

drop TABLE retiring_employees;

SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retiring_employees
FROM employees AS e
LEFT JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

SELECT * FROM retiring_employees;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retiring_employees
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, title DESC;

SELECT * FROM unique_titles;

SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
Group BY title
ORDER BY count DESC;

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = ('9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no ASC;

SELECT * FROM mentorship_eligibility;

SELECT * FROM retiring_titles;

DROP TABLE mentorship_eligibility;

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO mentorship_eligibility
FROM employees as e
LEFT OUTER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
LEFT OUTER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE de.to_date = ('9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no ASC;

SELECT COUNT(title), title
INTO mentorship_count
FROM mentorship_eligibility
Group BY title
ORDER BY count DESC;

SELECT * FROM mentorship_count;

DROP TABLE mentorship_count;

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title, de.dept_no, d.dept_name
INTO department_count
FROM employees as e
LEFT OUTER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
LEFT OUTER JOIN titles as t
ON (e.emp_no = t.emp_no)
LEFT OUTER JOIN departments as d
ON (de.dept_no = d.dept_no)
WHERE de.to_date = ('9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no ASC;

SELECT COUNT(dept_name), dept_name
INTO department_mentor
FROM department_count
Group BY dept_name
ORDER BY count DESC;

SELECT * FROM department_mentor;

DROP TABLE department_mentor;