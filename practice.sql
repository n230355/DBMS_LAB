use college;

CREATE TABLE Students (
    student_id   INT PRIMARY KEY,
    name         VARCHAR(50) NOT NULL,
    age          INT CHECK (age >= 15),
    email        VARCHAR(100) UNIQUE,
    dept_id      INT
);

CREATE TABLE Departments (
    dept_id      INT PRIMARY KEY,
    dept_name    VARCHAR(50) NOT NULL
);

CREATE TABLE Courses (
    course_id    INT PRIMARY KEY,
    title        VARCHAR(50) NOT NULL,
    credits      INT DEFAULT 3,
    dept_id      INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Enrollments (
    student_id   INT,
    course_id    INT,
    grade        CHAR(2),
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Departments VALUES
(1, 'Computer Science'), (2, 'Electronics'), (3, 'Mechanical');

INSERT INTO Students VALUES
(1, 'Yekanth', 19, 'yek@mail.com', 1),
(2, 'Priya', 20, 'priya@mail.com', 1),
(3, 'Arjun', 18, 'arjun@mail.com', 2),
(4, 'Sneha', 21, NULL, 3),
(5, 'Kiran', 17, 'kiran@mail.com', NULL);

INSERT INTO Courses VALUES
(101, 'DBMS', 4, 1),
(102, 'Digital Circuits', 3, 2),
(103, 'Thermodynamics', 4, 3),
(104, 'Data Structures', 4, 1);

INSERT INTO Enrollments VALUES
(1, 101, 'A'), (1, 104, 'B'),
(2, 101, 'A'), (2, 104, NULL),
(3, 102, 'B'), (4, 103, 'C'),
(5, 101, NULL);
select * from Enrollments ;
select * from Courses ;
select * from  Students; 
select * from Departements;

#1
create table Instructors(
instructor_id INT primary key,
name varchar(30) not null,
dept_id int,
foreign key(dept_id) references Departments(dept_id));



#2
insert into Students() values (10, 'Yekkjdanth', 10, 'ydek@mail.com', 1); #student chk1 constraint is violated
#3
INSERT INTO Courses VALUES
(111, 'DBMS', 4, 4); # Foreign constraint failes

#10
select * from students where age>18 order by age desc;
#
select * from students where email like '%mail.com%';

#
select * from Studentswhere dept_id IN (1,3); Not worked

# 
select distinct dept_id from students;

#
select s.name ,d.dept_name from Students s inner join Departments d on s.dept_id = d.dept_id;

SELECT s.name, d.dept_name
FROM Students s
LEFT JOIN Departments d ON s.dept_id = d.dept_id;

#
Non-correlated: students in the CS department
SELECT name FROM Students WHERE dept_id = (SELECT dept_id FROM Departments WHERE dept_name = 'Computer Science');
# antoher tupe
select s.name from students s inner join Departments d on s.dept_id = d.dept_id where d.dept_name='Computer Science';


## correlated : student enroleld in atleast one course
select distinct name from Students s inner join Enrollments e on s.student_id=e.student_id;
select name from students s where exists (select 1 from Enrollments e where e.student_id = s.student_id);

#
select name,dept_name from Students inner join Departments on Students.dept_id=Departments.dept_id;

#
select name,dept_name from Students left join Departments on Students.dept_id=Departments.dept_id;

#
select name ,title from Students s inner join (select student_id,title from Courses c inner join Enrollments e on c.course_id=e.course_id) d on s.student_id=d.student_id;  

#
select name from Students  where student_id not in (select student_id from Enrollments );

#
SELECT dept_name FROM Departments WHERE dept_id = (SELECT dept_id FROM Courses WHERE title = 'DBMS');


# aggregate functions
select count(*) from Students;

#
select sum(age)/count(*) as average from Students;

#
select dept_id,count(*) from Students group by dept_id;

#
select dept_id,count(*) from Students group by dept_id having count(*) > 1;

#
select course_id,count(*) from Enrollments group by course_id;

#
SELECT AVG(grade) FROM Enrollments;

#
select dept_id,avg(age) from Students group by dept_id; # avergae age per each departmen

# handling null value
select * from Students where email is NULL;

#
select count(grade) as graded,count(*) enrolled from enrollments;

#
--  NULL never equals or "not-equals" anything, so those rows are excluded either way.
--    SELECT * FROM Enrollments WHERE grade != 'A' OR grade IS NULL;

# View
create view CSstudents as select name , email from Students where dept_id = (select dept_id  from Departments where dept_name='Computer Science');

select email from CSstudents where name="Yekanth";











