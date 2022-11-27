Create database mridul;
use mridul;
CREATE TABLE STUDENT (
  id INT NOT NULL primary key AUTO_INCREMENT,
  NAME CHAR(25)
);
insert into STUDENT (NAME) value('akash'),('mohit'),('rohan'),('broti'),('kobe'),('priya'),('ruma'),('aparichit'),('shobit');
CREATE TABLE Packages (
    ID INT,
    student_salary  INT(10),
    FOREIGN KEY(id)
    REFERENCES STUDENT(id)
        ON DELETE CASCADE
); 
insert into Packages value(1,6000),(3,2000),(4,2500),(9,9000),(2,5000),(5,8000),(6,4000),(7,4500),(8,7000);
CREATE Table Friends (
  ID int ,
  Best_friend int
);
insert into friends values(1,2),(3,7),(6,9),(8,6),(7,3),(2,4);

-- --Query start here 

   Select S.Name
From ( Student as S  join Friends F using(ID)
 join Packages P1 on S.ID=P1.ID
 join Packages P2 on F.Best_friend=P2.ID)
Where P2.Student_salary > P1.Student_salary
Order By P2.Student_salary;

-- Query ended-- 