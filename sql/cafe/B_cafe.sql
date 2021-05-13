create database B_cafe;
show databases;
use B_cafe;
DROP TABLE MENU;
create table Menu(
Menu_Name varchar(25) primary key,
Takeout char(1) ,
price int,
Size char(1),
Ice char(1));

create table Customer(
Customer_Id int primary key,
customer_Name varchar(25) not null,
Phone_Number char(13) );

select * from Customer;

create table myorder(
Order_Number int auto_increment primary key,
order_time datetime ,
Pay char(2),
Customer_Id int,
Menu_Name varchar(25) not null);

desc MYORDER;
drop table mENU;

alter table myorder modify order_time datetime default current_timestamp;

ALTER table myorder 
	ADD constraint Customer_Id_FK FOREIGN KEY (Customer_id) 
    REFERENCES Customer(Customer_id);
DESC MYORDER;
ALTER table myorder 
	ADD constraint Menu_Name_FK FOREIGN KEY (Menu_Name) 
    REFERENCES menu(Menu_name);    
    
    DESC myorder;
    DESC MENU;
INSERT INTO menu VALUES(
	'아메리카노','y', 1500, 'G', 'I');
  DESC CUSTOMER;
INSERT INTO customer VALUES(
	'00015' , '이한빛', '010-3758-2525');
INSERT INTO myorder(PAY, CUSTOMER_ID, MENU_NAME) VALUES(
	'현금', '00015', '아메리카노');
    
SELECT * FROM  menu;
SELECT * FROM  CUSTOMER;
SELECT * FROM  MYORDER;   

---------------------------------------------------------------------------------------
 
SHOW DATABASES;
CREATE DATABASE C_CAFE;
USE C_CAFE;

-- menu 테이블 생성
create table Menu(
Menu_Name varchar(25),
Takeout char(1) ,
price int,
Size char(1),
Ice char(1),
primary key(menu_name));
    
desc menu;
drop table menu;

-- customer 테이블 생성
create table Customer(
Customer_Id int auto_increment,
customer_Name varchar(25) not null,
Phone_Number char(13),
 primary key(customer_id));

desc customer;
drop table customer;

-- myorder 테이블 생성
create table myorder(
Order_Number int auto_increment,
order_time datetime default current_timestamp,
Pay char(2),
Customer_Id int,
Menu_Name varchar(25) not null,
primary key(Order_number),
foreign key(Menu_Name) references menu(Menu_Name),
foreign key(Customer_Id) references customer(Customer_Id)
);

desc myorder;
drop table myorder;



show databases;
use pbldb;
show tables;
desc dept;
desc emp;
desc salgrade;

select e.ename, e.deptno, d.dname from emp e, dept d
where e.deptno = d.deptno;


select * from emp;
select * from dept;

select 칼럼명 from 테이블명;