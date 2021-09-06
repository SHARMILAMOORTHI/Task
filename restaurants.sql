mysql> create table restaurants(restaurantsid int,restaurantname varchar(25),restaurantaddress varchar(20),restaurantcity varchar(20),contactno bigint);
ERROR 1046 (3D000): No database selected
mysql> create database sample;
Query OK, 1 row affected (0.20 sec)

mysql> create database if not exists sample;
Query OK, 1 row affected, 1 warning (0.08 sec)

mysql> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| personaid          |
| sample             |
| stringfunctions    |
| sys                |
+--------------------+
7 rows in set (0.38 sec)

mysql> use sample;
Database changed
mysql> create table restaurants(restaurantsid int,restaurantname varchar(25),restaurantaddress varchar(20),restaurantcity varchar(20),contactno bigint);
Query OK, 0 rows affected (1.46 sec)

mysql> insert into restaurants values(101,'sharmi','dpi','tn',94994949);
Query OK, 1 row affected (0.46 sec)

mysql> insert into restaurants values(102,'joe','dpi','tn',984848484),values(103,'Jothi','salem','tn');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'values(103,'Jothi','salem','tn')' at line 1
mysql> insert into restaurants values(102,'joe','dpi','tn',984848484);
Query OK, 1 row affected (0.13 sec)

mysql> insert into restaurants values(102,'joe','dpi','tn',984848484),values(103,'Jothi','salem','tn',7848448833);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'values(103,'Jothi','salem','tn',7848448833)' at line 1
mysql> insert into restaurants values(103,'Jothi','salem','tn',7848448833);
Query OK, 1 row affected (0.14 sec)

mysql> create table restaurantss(restaurantsid int,restaurantname varchar(25),restaurantaddress varchar(20),restaurantcity varchar(20),contactno bigint);
Query OK, 0 rows affected (0.91 sec)

mysql> insert into restaurants values(101,'kh','dpi','tn',94994949);
Query OK, 1 row affected (0.11 sec)

mysql> insert into restaurants values(102,'SGH','dpi','tn',984848484);
Query OK, 1 row affected (0.33 sec)

mysql> insert into restaurants values(103,'HGF','dpi','tn',999999999);
Query OK, 1 row affected (0.13 sec)

mysql> insert into restaurants values(104,'GHY','Salem','tn',888888899);
Query OK, 1 row affected (0.19 sec)

mysql> insert into restaurants values(105,'HUY','Salem','tn',88777799);
Query OK, 1 row affected (0.20 sec)

mysql> select *from restaurantss;
Empty set (0.17 sec)

mysql> insert into restaurantss values(105,'HUY','Salem','tn',88777799);
Query OK, 1 row affected (1.31 sec)

mysql> insert into restaurantss values(104,'GHY','Salem','tn',888888899);
Query OK, 1 row affected (0.15 sec)

mysql> insert into restaurantss values(103,'HGF','dpi','tn',999999999);
Query OK, 1 row affected (0.07 sec)

mysql> insert into restaurantss values(102,'SGH','dpi','tn',984848484);
Query OK, 1 row affected (0.16 sec)

mysql> insert into restaurantss values(101,'kh','dpi','tn',94994949);
Query OK, 1 row affected (0.08 sec)

mysql> select *from restaurantss;
+---------------+----------------+-------------------+----------------+-----------+
| restaurantsid | restaurantname | restaurantaddress | restaurantcity | contactno |
+---------------+----------------+-------------------+----------------+-----------+
|           105 | HUY            | Salem             | tn             |  88777799 |
|           104 | GHY            | Salem             | tn             | 888888899 |
|           103 | HGF            | dpi               | tn             | 999999999 |
|           102 | SGH            | dpi               | tn             | 984848484 |
|           101 | kh             | dpi               | tn             |  94994949 |
+---------------+----------------+-------------------+----------------+-----------+
5 rows in set (0.00 sec)

mysql> desc rmenuitems;
ERROR 1146 (42S02): Table 'sample.rmenuitems' doesn't exist
mysql> create table resmenuitems(menuid int,restaurantsdid int,menuname varchar(10),menutype varchar(15),menucategory varchar(15),menuprice double);
Query OK, 0 rows affected (1.14 sec)

mysql> insert into resmenuitems values(5,105,'veg','Biriyani','meat',120);
Query OK, 1 row affected (0.09 sec)

mysql> insert into resmenuitems values(4,104,'veg','Sawarma','nonveg',150);
Query OK, 1 row affected (0.15 sec)

mysql> insert into resmenuitems values(3,103,'veg','Rice','meal',70);
Query OK, 1 row affected (0.38 sec)

mysql> insert into resmenuitems values(2,102,'veg','noodles','nonveg',90);
Query OK, 1 row affected (0.09 sec)

mysql> insert into resmenuitems values(1,101,'freshe','rosemilk','drink',110);
Query OK, 1 row affected (0.14 sec)

mysql> select *from resmenuitems;
+--------+----------------+----------+----------+--------------+-----------+
| menuid | restaurantsdid | menuname | menutype | menucategory | menuprice |
+--------+----------------+----------+----------+--------------+-----------+
|      5 |            105 | veg      | Biriyani | meat         |       120 |
|      4 |            104 | veg      | Sawarma  | nonveg       |       150 |
|      3 |            103 | veg      | Rice     | meal         |        70 |
|      2 |            102 | veg      | noodles  | nonveg       |        90 |
|      1 |            101 | freshe   | rosemilk | drink        |       110 |
+--------+----------------+----------+----------+--------------+-----------+
5 rows in set (0.12 sec)

mysql> select * from restaurantss where restaurantcity = 'dpi';
Empty set (0.11 sec)

mysql> select * from restaurantss where restaurantcity = 'tn';
+---------------+----------------+-------------------+----------------+-----------+
| restaurantsid | restaurantname | restaurantaddress | restaurantcity | contactno |
+---------------+----------------+-------------------+----------------+-----------+
|           105 | HUY            | Salem             | tn             |  88777799 |
|           104 | GHY            | Salem             | tn             | 888888899 |
|           103 | HGF            | dpi               | tn             | 999999999 |
|           102 | SGH            | dpi               | tn             | 984848484 |
|           101 | kh             | dpi               | tn             |  94994949 |
+---------------+----------------+-------------------+----------------+-----------+
5 rows in set (0.00 sec)

mysql> select restaurantsid,restaurantname from restaurantss where restaurantcity='tn';
+---------------+----------------+
| restaurantsid | restaurantname |
+---------------+----------------+
|           105 | HUY            |
|           104 | GHY            |
|           103 | HGF            |
|           102 | SGH            |
|           101 | kh             |
+---------------+----------------+
5 rows in set (0.00 sec)

mysql> create customers(customerid int,customername varchar(10),customercity varchar(10),customergender varchar(15
    ->
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'customers(customerid int,customername varchar(10),customercity varchar(10),custo' at line 1
mysql> create customers(customerid int,customername varchar(10),customercity varchar(10),customergender varchar(15);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'customers(customerid int,customername varchar(10),customercity varchar(10),custo' at line 1
mysql> create customers(customerid int,customername varchar(10),customercity varchar(10),customergender varchar(15);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'customers(customerid int,customername varchar(10),customercity varchar(10),custo' at line 1
mysql> create table customers(customerid int,customername varchar(10),customercity varchar(10),customergender varchar(15);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table customers(customerid int,customername varchar(10),customercity varchar(10),customergender varchar(05));
Query OK, 0 rows affected (1.52 sec)

mysql> insert into customers values(505,'Sharmi','dpi','female');
ERROR 1406 (22001): Data too long for column 'customergender' at row 1
mysql> insert into customers values(505,'Sharmi','dpi','fm');
Query OK, 1 row affected (0.08 sec)

mysql> insert into customers values(506,'joe','dpi','fm');
Query OK, 1 row affected (0.10 sec)

mysql> insert into customers values(507,'aruna','dpi','fm');
Query OK, 1 row affected (0.14 sec)

mysql> select *from customers;
+------------+--------------+--------------+----------------+
| customerid | customername | customercity | customergender |
+------------+--------------+--------------+----------------+
|        505 | Sharmi       | dpi          | fm             |
|        506 | joe          | dpi          | fm             |
|        507 | aruna        | dpi          | fm             |
+------------+--------------+--------------+----------------+
3 rows in set (0.00 sec)

mysql> select r.restaurantname,c.customername,c.customercity from restaurantss r,customers c;
+----------------+--------------+--------------+
| restaurantname | customername | customercity |
+----------------+--------------+--------------+
| HUY            | aruna        | dpi          |
| HUY            | joe          | dpi          |
| HUY            | Sharmi       | dpi          |
| GHY            | aruna        | dpi          |
| GHY            | joe          | dpi          |
| GHY            | Sharmi       | dpi          |
| HGF            | aruna        | dpi          |
| HGF            | joe          | dpi          |
| HGF            | Sharmi       | dpi          |
| SGH            | aruna        | dpi          |
| SGH            | joe          | dpi          |
| SGH            | Sharmi       | dpi          |
| kh             | aruna        | dpi          |
| kh             | joe          | dpi          |
| kh             | Sharmi       | dpi          |
+----------------+--------------+--------------+
15 rows in set (0.03 sec)

mysql> select * from customers where customercity='dpi';
+------------+--------------+--------------+----------------+
| customerid | customername | customercity | customergender |
+------------+--------------+--------------+----------------+
|        505 | Sharmi       | dpi          | fm             |
|        506 | joe          | dpi          | fm             |
|        507 | aruna        | dpi          | fm             |
+------------+--------------+--------------+----------------+
3 rows in set (0.00 sec)

mysql> select * from customers where customername='joe';
+------------+--------------+--------------+----------------+
| customerid | customername | customercity | customergender |
+------------+--------------+--------------+----------------+
|        506 | joe          | dpi          | fm             |
+------------+--------------+--------------+----------------+
1 row in set (0.00 sec)