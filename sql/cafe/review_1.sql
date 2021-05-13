-- 74p
show databases;
use employees;
show tables;
select * from employees;
select concat(first_name, ' ', last_name) as 이름, hire_date as 입사일 from employees
where gender = 'F' and hire_date < '1989-01-01' ;

-- 75p
show tables;
select * from dept_emp;
select emp_no, dept_no from dept_emp
where dept_no in ('d005' , 'd009');
-- where dept_no = 'd005' or dept_no = 'd009' ; 

-- 76p
show tables;
select * from  employees;
select concat(first_name, ' ',last_name) as 이름, hire_date as 입사일
from employees where hire_date like '1989%' ;

select substring('Happy Day' , 2, 2);

-- 78p
select * from employees;
select upper(concat(first_name, ' ',last_name)) as 이름, gender as 성별,  hire_date as 입사일
from employees where last_name = 'acton';

-- 81p
select * from employees;
select concat(first_name, ' ',last_name) as 이름, hire_date
from employees where substring(hire_date, 1, 4) = '1989';

-- 83p
show databases;
use employees;
show tables;

select * from salaries;
select emp_no, lpad(cast(salary as char), 10, '*')
from salaries
where from_date like '2001%' and salary <= 70000;

-- 85p
select * from salaries;
select emp_no, trim( leading '*' from lpad(cast(salary as char), 10, '*') )
from salaries
where from_date like '2001-%' and salary < 70000;

-- 100p 각직원들에 대해 직원이름과 근무개월수 출력
select * from employees;
select concat(first_name, '',last_name) as name ,
period_diff(date_format(curdate(), '%Y%m'), date_format(hire_date, '%Y%m'))
from employees;

-- p101
select concat(first_name, '',last_name) as name , hire_date, 
 date_add(hire_date, interval 6 month)
 from employees;
 
 -- 106p
 select * from salaries;
 select avg(salary), sum(salary) from salaries
 where emp_no = '10060' ;
 -- 직원의 최저 임금을 받은 시기와 최대 임금을 받은 날자를 각 각 출력
 select  from_date, to_date, max(salary) from salaries
 where emp_no = '10060'; -- 잘못된 결과입니다!
 
 select from_date, to_date, salary from salaries
 where emp_no = '10060' and salary = (select max(salary) from salaries where emp_no = '10060'); -- 2002년이 찐이다.
 
 -- 107p
 show tables;
 select * from dept_emp;
 select count(*) from dept_emp
 where dept_no = 'd008' ;
 
 -- 110p
select*from salaries;
select emp_no, avg(salary) from salaries
group by emp_no;
-- 현재 매니저 직책 사원에 대한 평균 연봉은
show databases;
use pbldb;
select * from emp;
select job, avg(sal) from emp
where job = 'manager' group by job;

-- 111p 사원별로 몇번의 직책 변경이 있었는지, 그 중 직책 변경을 가장 많이한 사원10명의 정보를 입력
use employees;
select * from titles;
select emp_no, count(title) from titles
group by emp_no order by 2 desc limit 10;

 -- 112p
 select * from salaries;
 select emp_no, avg(salary) from salaries
 group by emp_no having avg(salary) >= '50000';
 
 -- 113p
 use pbldb;
 select * from emp;
 


