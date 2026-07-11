 CREATE TABLE Students (
    ->     StudentID INT PRIMARY KEY,
    ->     Name VARCHAR(100) NOT NULL,
    ->     Gender VARCHAR(10),
    ->     Age INT,
    ->     Department VARCHAR(50),
    ->     Year INT,
    ->     Email VARCHAR(100),
    ->     Phone VARCHAR(15),
    ->     City VARCHAR(50),
    ->     Marks DECIMAL(5,2)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> SHOW TABLES;
+---------------------+
| Tables_in_studentdb |
+---------------------+
| students            |
+---------------------+
1 row in set (0.02 sec)

mysql> INSERT INTO Students VALUES
    -> (101,'Rahul','Male',20,'CSE',2,'rahul@gmail.com','9876543210','Chennai',87.5),
    -> (102,'Priya','Female',19,'IT',1,'priya@gmail.com','9876543211','Madurai',91.0),
    -> (103,'Karthik','Male',21,'ECE',3,'karthik@gmail.com','9876543212','Salem',76.5),
    -> (104,'Divya','Female',20,'CSE',2,'divya@gmail.com','9876543213','Coimbatore',95.0),
    -> (105,'Arun','Male',22,'EEE',4,'arun@gmail.com','9876543214','Trichy',68.0),
    -> (106,'Sneha','Female',20,'IT',2,'sneha@gmail.com','9876543215','Chennai',89.0),
    -> (107,'Vignesh','Male',19,'CSE',1,'vignesh@gmail.com','9876543216','Erode',73.5),
    -> (108,'Meena','Female',21,'ECE',3,'meena@gmail.com','9876543217','Madurai',84.5),
    -> (109,'Ajith','Male',22,'MECH',4,'ajith@gmail.com','9876543218','Salem',79.0),
    -> (110,'Nisha','Female',20,'IT',2,'nisha@gmail.com','9876543219','Chennai',92.0);
Query OK, 10 rows affected (0.03 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql>
mysql> SELECT * FROM Students;
+-----------+---------+--------+------+------------+------+-------------------+------------+------------+-------+
| StudentID | Name    | Gender | Age  | Department | Year | Email             | Phone      | City       | Marks |
+-----------+---------+--------+------+------------+------+-------------------+------------+------------+-------+
|       101 | Rahul   | Male   |   20 | CSE        |    2 | rahul@gmail.com   | 9876543210 | Chennai    | 87.50 |
|       102 | Priya   | Female |   19 | IT         |    1 | priya@gmail.com   | 9876543211 | Madurai    | 91.00 |
|       103 | Karthik | Male   |   21 | ECE        |    3 | karthik@gmail.com | 9876543212 | Salem      | 76.50 |
|       104 | Divya   | Female |   20 | CSE        |    2 | divya@gmail.com   | 9876543213 | Coimbatore | 95.00 |
|       105 | Arun    | Male   |   22 | EEE        |    4 | arun@gmail.com    | 9876543214 | Trichy     | 68.00 |
|       106 | Sneha   | Female |   20 | IT         |    2 | sneha@gmail.com   | 9876543215 | Chennai    | 89.00 |
|       107 | Vignesh | Male   |   19 | CSE        |    1 | vignesh@gmail.com | 9876543216 | Erode      | 73.50 |
|       108 | Meena   | Female |   21 | ECE        |    3 | meena@gmail.com   | 9876543217 | Madurai    | 84.50 |
|       109 | Ajith   | Male   |   22 | MECH       |    4 | ajith@gmail.com   | 9876543218 | Salem      | 79.00 |
|       110 | Nisha   | Female |   20 | IT         |    2 | nisha@gmail.com   | 9876543219 | Chennai    | 92.00 |
+-----------+---------+--------+------+------------+------+-------------------+------------+------------+-------+
10 rows in set (0.00 sec)

mysql> SELECT Name, Department, Marks
    -> FROM Students;
+---------+------------+-------+
| Name    | Department | Marks |
+---------+------------+-------+
| Rahul   | CSE        | 87.50 |
| Priya   | IT         | 91.00 |
| Karthik | ECE        | 76.50 |
| Divya   | CSE        | 95.00 |
| Arun    | EEE        | 68.00 |
| Sneha   | IT         | 89.00 |
| Vignesh | CSE        | 73.50 |
| Meena   | ECE        | 84.50 |
| Ajith   | MECH       | 79.00 |
| Nisha   | IT         | 92.00 |
+---------+------------+-------+
10 rows in set (0.01 sec)

mysql>
mysql> SELECT *
    -> FROM Students
    -> WHERE City='Chennai';
+-----------+-------+--------+------+------------+------+-----------------+------------+---------+-------+
| StudentID | Name  | Gender | Age  | Department | Year | Email           | Phone      | City    | Marks |
+-----------+-------+--------+------+------------+------+-----------------+------------+---------+-------+
|       101 | Rahul | Male   |   20 | CSE        |    2 | rahul@gmail.com | 9876543210 | Chennai | 87.50 |
|       106 | Sneha | Female |   20 | IT         |    2 | sneha@gmail.com | 9876543215 | Chennai | 89.00 |
|       110 | Nisha | Female |   20 | IT         |    2 | nisha@gmail.com | 9876543219 | Chennai | 92.00 |
+-----------+-------+--------+------+------------+------+-----------------+------------+---------+-------+
3 rows in set (0.01 sec)
