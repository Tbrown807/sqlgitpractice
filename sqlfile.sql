SELECT * FROM student

ALTER TABLE STUDENT
ADD CONTACT VARCHAR(20)

--this is how to insert
INSERT INTO student
VALUES(1,'shade',20,'2024-02-14','09022787028'),
	  (2,'Tobi',23,'2024-06-19','09022787028'),
	  (3,'soji',22,'2024-03-11','09022787028'),
	  (4,'Ruth',21,'2024-07-13','09022787028'),
	  (5,'lawal',20,'2024-06-15','09022787028')

INSERT INTO department_info
VALUES (

	  alter table department_info
	  drop constraint [UQ__student__870C3C8B9016BD2B]

	  alter table student
	  drop constraint [UQ__student__870C3C8B9016BD2B]

	  ALTER TABLE student
	  DROP COLUMN department_id

INSERT INTO department_info
VALUES (1,'Computer Science'),
		(2,'CyberSecurity'),

INSERT INTO department_info
VALUES (3,'data science'),
		(4,'data analyst') 

SELECT * FROM student

--UODATE VALUES SYNTAX UPDATE table_name SET column_to_update=values WHERE condition is met
--multiple value update
UPDATE student
SET department_id=1
WHERE student_id IN (4,5);

--single update
UPDATE student
SET contact=null
WHERE student_id=1

--USE CASE STATEMENT TO UPDATE MULTIPLE ROWS
UPDATE student
SET department_id = CASE
WHEN student_id=1 THEN 2
WHEN student_id=2 THEN 3
WHEN student_id=3 THEN 4
ELSE department_id
END
WHERE student_id in (1,2,3)


--DELETE OPERATION
DELETE FROM student
WHERE student_id=3
 