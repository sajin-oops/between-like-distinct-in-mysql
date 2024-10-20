 create table student(
    -> name varchar(30)NOT NULL,
    -> regno varchar(20) unique,
    -> email varchar(100) unique,
    -> password varchar(40)NOT NULL
    -> );



mysql> DESC student;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| name     | varchar(30)  | NO   |     | NULL    |       |
| regno    | varchar(20)  | YES  | UNI | NULL    |       |
| email    | varchar(100) | YES  | UNI | NULL    |       |
| password | varchar(40)  | NO   |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)



Insert values
insert into student values("Sajin",222,"sajin21@gmail.com",12345678);
Query OK, 1 row affected (0.04 sec)

To view the values
mysql> select * from student;


+-------+-------+-------------------+----------+
| name  | regno | email             | password |
+-------+-------+-------------------+----------+
| Sajin | 222   | sajin21@gmail.com | 12345678 |
+-------+-------+-------------------+----------+
1 row in set (0.00 sec)


LOGICAL OPERATIONS

mysql> select * from student where regno = 222;
+-------+-------+---------------------+----------+
| name  | regno | email               | password |
+-------+-------+---------------------+----------+
| Sajin | 222   | sajin2888@gmail.com | 12345678 |
+-------+-------+---------------------+----------+
1 row in set (0.00 sec)

mysql> select * from student where regno = 222 and name = "Sajin";
+-------+-------+---------------------+----------+
| name  | regno | email               | password |
+-------+-------+---------------------+----------+
| Sajin | 222   | sajin2888@gmail.com | 12345678 |
+-------+-------+---------------------+----------+
1 row in set (0.00 sec)

mysql> select * from student where regno = 222 and name = "Sajiwwn";
Empty set (0.00 sec)

mysql> select * from student where regno = 222 or name = "Sajkjjjin";
+-------+-------+---------------------+----------+
| name  | regno | email               | password |
+-------+-------+---------------------+----------+
| Sajin | 222   | sajin2888@gmail.com | 12345678 |
+-------+-------+---------------------+----------+
1 row in set (0.00 sec)

mysql>between

//

mysql> select*from student where regno between 2 and 2222;
+-------+-------+---------------------+----------+
| name  | regno | email               | password |
+-------+-------+---------------------+----------+
| Sajin | 222   | sajin2888@gmail.com | 12345678 |
| aaron | 2222  | aaron21@gmail.com   | 123456   |
+-------+-------+---------------------+----------+
2 rows in set (0.00 sec)

//distinct 
mysql> select distinct name from student;
+-------+
| name  |
+-------+
| Sajin |
| aaron |
| jizzz |
+-------+
3 rows in set (0.00 sec)


// LIKE

mysql> select * from student where name like 'S%';
+-------+-------+---------------------+----------+
| name  | regno | email               | password |
+-------+-------+---------------------+----------+
| Sajin | 222   | sajin2888@gmail.com | 12345678 |
+-------+-------+---------------------+----------+
1 row in set (0.00 sec)