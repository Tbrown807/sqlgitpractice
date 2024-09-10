--create a table student that contains studentID, STUDENT_Name, age , registration date , department_id
CREATE TABLE student(
student_id INT PRIMARY KEY,
student_name VARCHAR(30) NOT NULL,
age INT CHECK(age >=18),
reg_date DATE DEFAULT GETDATE(),
department_id INT 
 )

 select * from student

 --create a table department that contains department_name and department_id
 CREATE TABLE department_info(
 Department_id int primary key,
 Department_name VARCHAR(30) NOT NULL,
 )

 select * from department_info


 alter table department_info
 add constraint unique_departmentname unique (department_name)

--Add columns to student
ALTER TABLE student
ADD contact VARCHAR(12) UNIQUE

--Drop column from student
ALTER TABLE student
DROP CONSTRAINT [UQ__student__870C3C8B9016BD2B]

alter table student
drop column contact