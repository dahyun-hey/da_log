select version(); -- 버전함수가 호출됨
create database pbldb; -- pbldb라는 DB 생성
show databases; -- pbldb가 잘 만들어 졌는지 확인
show tables; -- pbldb안에 있는 table다 보여줘
use mysql; -- 이제 우리는 mysql이라는 DB를 사용할거야!
use pbldb; -- mysql은 무시하고 pbldb를 실행하겠다!
show tables; 

create user pbl@localhost identified by 'pblpw'; -- pbl@localhost 내부에서만 사용가능한 유저생성
create user pbl@'%' identified by 'pblpw'; -- pbl@'%' 외부에서도 사용가능한
grant all privileges on pbldb.* to 'pbl'@'localhost' with grant option;
-- pbldb의 모든 권한을 줘라 
grant all privileges on pbldb.* to 'pbl'@'%' with grant option;

select user,host from mysql.user;
select user();

flush privileges;
show grants for pbl@localhost;

create table pets 
(name varchar(20),
owner varchar(20),
species varchar(20),
gender char(1),
birth date,
death date);
use pbldb;
show tables;
desc pets;

show tables;
insert into pets(name, owner) values ('삐삐','carami');  -- 여기서 컬럼리스트를 2개썼는데 값을 3개쓰면 아예 안된다.
-- select컴럼리스트from 데이블명들 where... 
select*from pets; -- 여기에 컬럼이 반드시 있어야해!! 그럼not null을 걸어주면 됨...데이터 무결성 보장
desc pets; 

select name, owner, birth from pets; -- birth뒤에 ,가 오면 테이블명이라고 예측해서 마지막은 ,를 안씀 모든 컬럼조회에는 *표 전체alter

select * from pets;

select*from pet  where birth >= '1998-1-1';
select*from pet where species = 'dog' and gender = 'f';
select*from pet where species = 'snake' or species = 'bird';
select*from pets;
select name, owner, birth from pets order by birth asc, name; 
-- 위 문장 뜻 :정렬의 기준을 다양하게 줄수 있음. 1번기준이 asc이고 2번이 name기준, 칼럼별로 정렬도 가능
select name, owner, birth from pets order by 2 desc, 3; -- 셀렉트 뒤에 선택된 칼럼에서 오더바이가 정렬기준이고 asc는 오름차순, 1은 두번재 정렬기준임.

select name from pets where death is not null; -- 죽은친구가 출력된다.

-- _는 무조건 한자를 말함 d%는 없을 수 도 잇고 무슨 글자든 상관이 없음 _d는 두번째 글자가 d인것을 찾음
select*from pets
where name like '_o%';
select*from pets
where name like'%u%';
select*from pets where name like'_____' ;-- 이름 5문자 이름의 동물조회
select distinct species from pets; -- 종류를 중복제거하고 보여줌
select count(distinct species) from pets; -- 종류의 숫자를 카운팅
select count(name) from pets; -- count()함수안에 *찍으면 모든 칼럼의 개수를 반환함

show tables; -- 이거 전에 프롬프트에서 -u pbl -p pbldb < mysql_emp.txt쳐줘야함
desc emp;
select * from emp; -- 부서번호가 00이면서 매니저인 사람들만 뽑아보고 싶어!




select * from emp;
select empno, ename, job from emp;
select empno 사번, ename 이름, job 업무 from emp;
select empno as "사 번", ename as 이름, job 업무 from emp;

-- 2일차 진도
show tables;
desc emp;
select * from emp; -- salesman, manager 
where deptno = 10 or  deptno = 20;
-- 위와 아래의 결과 값이 똑같음
select * from dept
where deptno in (10 , 20);

-- 잡이 매니저거나 세일즈맨이면서 사번이 10번인 사원은 어떻게 찾아낼까? 질문똑바로 못들음 ㅜㅜ
select * from emp
where job in ('salesman', 'manager') and deptno = 10 ;

select empno,enma,sal*20 + ifnull(comm,0) 연봉 from emp

-- 문자형 함수
select lower('SEoul') , Lcase('seOUL');

-- 그룹함수 사용
show tables;
desc emp;
select * from emp;
select count(*) from emp;
select max(sal) from emp;

SELECT * FROM salaries;


select avg(sal) from emp;
select ename, avg(sal) from emp;
select deptno, avg(sal) from emp
group by deptno;

-- 사번이 10060인 직원의 급여 평균과 총합계를 출력
desc salaries;
select avg(sal), sum(sal) from deptno
where empno = '10060';

show tables;
-- 급여가 5000이상 1500미만인 사원은 제외하고 job별로 평균
-- 급여를 구하세요. 단 잡별 평균 급여가 2000미만인 잡은 제외하고 보여주세요
desc emp;
select * from emp;
select job, avg(sal) from emp 
where not sal < 5000 and sal >= 1500
group by job
having avg(sal) >= 2000;

-- 문제: 사원별로 몇 번의 직책 변경이 있었는지 알고 싶어요
-- 그 중 칙책 변경을 가장 많이 한 사원 10명의 정보를 보여주세요alter
-- table을 이용하세요
select emp_no, count(title) from titles
group by emp_no
order by 2 desc limit 10; -- 왜 안되는 것인가.. ㅜㅜ


desc dept;
select empno, dname, ename from emp, dept
where emp.deptno = dept.deptno;

-- 같은 이름의 컬럼이 존재할 수 있음 그래서 어디 테이블의 컬럼인지 명시해줘야함
-- 테이블에도 알리아스 지정가능
desc dept;
select e.empno,e.empno,e.ename ,d.dname, ename from emp as e, dept as d 
where e.deptno = d.deptno;