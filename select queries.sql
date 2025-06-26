TABLE : STUDENT DETAILS
  
COLUMNS : 
  
student_id (Primary Key)
student_name
student_department
email
phone_number
  
//To Select all records
  
SELECT * FROM student;
(This shows the entire student table, every column and row.)

//To show only names and departments
  
SELECT student_name, student_department FROM student;
(To get specific columns details)

//Filter students from ‘Computer Science’

SELECT * FROM student
WHERE student_department = 'Computer Science';
(This gives a filtered list of only CS students.)

//Find students whose name contains ‘an’

SELECT * FROM student
WHERE student_name LIKE '%an%';
(This is useful when you only remember part of a name — like searching for "Anjali" or "Kannan".)

//select students with Gmail addresses

SELECT * FROM student
WHERE email LIKE '%@gmail.com';
(Useful when contacting students using a specific domain.)

//Students with IDs between 101 and 110

SELECT * FROM student
WHERE student_id BETWEEN 101 AND 110;
(This helps to select student details from within a range using the student_Id.)

//Students from ‘IT’ or ‘ECE’

SELECT * FROM student
WHERE student_department IN ('IT', 'ECE');
(This is used to select from specific departments using comma between the departments helps to get multiple departments in one go .)

//List all student names alphabetically

SELECT student_name FROM student
ORDER BY student_name ASC;
(This sorts the names from A to Z.)

//Top 3 latest students (by ID) using limit

SELECT * FROM student
ORDER BY student_id DESC
LIMIT 3;
(Assuming higher student_id means recently added, this shows the latest entries.)

//List only unique departments

SELECT DISTINCT student_department FROM student;
(If you want to know how many different departments are in the table, this helps.)

//Use alias to rename columns

SELECT student_name AS Name, student_department AS Dept
FROM student;
(This helps in changing the name of a column during an select process.)
