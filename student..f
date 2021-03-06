-- The Following are the tables has to be in your database & model deisgn:
-- users
-- codekata
-- attendance
-- topics
-- tasks
-- company_drives
-- mentors
-- students_activated_courses
-- courses

-- 1. Create tables for the above list given

CREATE DATABASE students;
use students;
CREATE TABLE users (
    User_ID INTEGER PRIMARY KEY, 
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    Email VARCHAR(40),
    PhoneNumber INTEGER,
)
CREATE TABLE codekata (
    User_ID INTEGER,
    Problems TEXT,
    No_problems_solved INTEGER,
    Levels VARCHAR(20),
    Geek_coins INTEGER
)

CREATE TABLE attendance (
    User_ID INTEGER,
    No_of_sessions INTEGER,
    Attendance_percentage FLOAT,
)

CREATE TABLE topics (
  No_of_topics INTEGER,
  topics_name TEXT,
)

CREATE TABLE tasks(
    Task_ID INTEGER,
    Name_of_tasks TEXT,
    task_Levels TEXT,
    Date_of_task_completion Date

)

CREATE TABLE company_drives(
    Company_ID INTEGER,
    Name_of_the_company TEXT,
    Job_Roles TEXT,
    Company_Website TEXT,
    CTC_Offered INTEGER,
    No_of_drives_student_attended INTEGER,
)

CREATE TABLE mentors(
    Mentor_ID INTEGER,
    Name_of_the_mentor TEXT,
    No_students_assigned INTEGER,
    No_of_sessions_assigned INTEGER,


)

CREATE TABLE students_activated_courses(
  Student_activation_Id INTEGER,
  No_of_student_activation INTEGER,
  Activated_course_name TEXT,
  Expire_of_course DATETIME
)

CREATE TABLE courses(
    course_Id INTEGER
    Course_name TEXT,
    Course_length TEXT,
    Course_certification VARCHAR(25)
    
)

-- 2. insert at least 5 rows of values in each table
INSERT INTO users (User_ID, FirstName, LastName, Email, PhoneNumber) 
            values(1,'srikanth', 'karnati', 'srikanth@gmail.com', 998877),
 INSERT INTO  values(2,'Shiva', ' pamidiberry', 'shiva@gmail.com' , 998866),
 INSERT INTO  values(3,'naveen', 'chilaka' ,  'chilaka@gmail.com ', 998855)
 INSERT INTO  values(4,'nithesh', 'lakkireddy',  'laki@gmail.com',998844  ),
 INSERT INTO  values(5,'masthan', 'shaik',  'basha@gmail.com',998833);

INSERT INTO codekata (User_ID, Problems, No_problems_solved, Levels, Geek_coins) 
            values(1, 'Basics', 30,'Easy' , 100),
 INSERT INTO  values(2,'Sorting', 20, 'Medium' , 50),
 INSERT INTO  values(3, 'Array', 15 , 'Medium' , 20),
 INSERT INTO  values(4, 'String', 25,'Easy', 60),
 INSERT INTO  values(5, 'Numbers', 35, 'Hard', 10);

INSERT INTO attendance (User_ID ,No_of_sessions ,Attendance_percentage)
            values(1, 10, 80%),
  INSERT INTO  values(2,20,70%),      
  INSERT INTO  values(3,30,60%),      
  INSERT INTO  values(4,40,50%),      
  INSERT INTO  values(5,50,40%);  
 
 INSERT INTO task (Task_ID, Name_of_tasks, task_Levels, Date_of_task_completion)
        values(1,'todo-list', 'Easy' ,'22/02/23'  ),
        values(2,'crud', 'Easy' ,'22/02/28'  ),
        values(3,'mysqltask', 'medium' ,'22/03/11'  ),
        values(4,'react', 'Hard' ,'22/02/17'  ),
        values(5,'functions', 'Hard' ,'22/11/27'  );

 INSERT INTO company_drives(Company_ID, Name_of_the_company, Job_Roles, Company_Website, CTC_Offere,   No_of_drives_student_attended)
      values(1,'Guvi', 'ui/ux-desginer' ,'www.guvi.in', '5-lakh ctc',3),
      values(2,'Tcs', 'software-engineer' ,'www.tcs.com', '6-lakh ctc'6),
      values(3,'Amazon', 'system-admin' ,'www.amazon.com', '4.5-lakh ctc'9),
      values(4,'Flipkart', 'backend-developer' ,'www.flipkart.com', '10-lakh ctc'12),
      values(5,'Swiggy', 'fullstack-developer' ,'www.swiggy.in', '21-lakh ctc'15),
      
 INSERT INTO  mentors (Mentor_Id, Name_of_the_mentor, No_students_assigned, No_of_sessions_assigned)
    values(1, 'Arun', 50, 25),
    values(2, 'Arjun', 30, 15),
    values(3, 'lavish Kumar', 25, 10),
    values(4, 'gangupadhya', 60, 30),
    values(5, 'maheshwari', 40, 40),
           
INSERT INTO  students_activated_courses (Student_activation_Id, No_of_student_activation , Activated_course_name , Expire_of_course)
   values(1, 80, 'Python', '22/10/25'),
   values(2, 60, 'Javascript', '22/08/15'),
   values(3, 40, 'React', '22/06/10'),
   values(4, 20, 'C++', '22/05/5'),
   values(5, 10, 'Ruby', '22/04/01'),

 INSERT INTO  courses(Course_ID, Course_name, Course_length, Course_certification)
          values(1,'Html','3hrs' , 'certification_of_HTML'),
          values(2,'Css','5hrs' , 'certification_of_CSS'),
          values(3,'Python','15hrs' , 'certification_of_PYTHON'),
          values(4,'Java','30hrs' , 'certification_of_JAVA'),
          values(5,'Javascript','20hrs' , 'certification_of_JAVASCRPIT'),



--  3. get number problems solved in codekata by combining the users
 select count(No_problems_solved) as No_problems_solved_by_user  from codekata 

--  4. display the no of company drives attended by a user

  select No_of_drives_student_attended from company_drives


-- 5. combine and display students_activated_courses and courses for a specific user groping them based on the course

select Student_activation_Id, Activated_course_name from students_activated_courses group by Activated_course_name 

-- 6. list all the mentors

  select Name_of_the_mentor from mentors


-- 7. list the number of students that are assigned for a mentor

  select No_students_assigned  from mentors
