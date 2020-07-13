select EMPNAME, TITLE, SALARY
from EMPLOYEE
where salary between 3000000 and 4500000;

select salary, title, empname
from employee
where dno = 2
order by salary;

select *
from employee
where dno in (1,3);

select avg(salary) as avgsal, max(salary) as maxsal
from employee;

select dno, avg(salary) as avgsal, max(salary) as maxsal
from employee
group by dno;

select dno, avg(salary) as avgsal, max(salary) as maxsal
from employee
group by dno
having avg(salary) >= 2500000;

(select dno
from employee
where empname = '김창섭')
union
(select deptno
from department
where deptname = '개발');

select empname, deptname
from employee e, department d
where e.dno = d.deptno;

select e.empname, m.empname
from employee e, employee m
where e.manager = m.empno;

select deptname, empname, title, salary
from employee e, department d
where e.dno = d.deptno
order by deptname, salary desc;  
/* desc 는 , 앞에 있는 deptname에는 적용되지 않음 */

select empname, title
from employee
where title =(select title
            from employee
            where empname = '박영권'); /* -> return 과장 */
            
select empname
from employee
where dno in (select deptno
            from department
            where deptname = '영업' or deptname='개발');  /* -> return (1, 3) */

select empname
from employee e, department d
where e.dno = d.deptno
    and (d.deptname ='영업' or d.deptname = '개발');

select empname
from employee e
where exists
    (select *
    from department d
    where e.dno = d.deptno
        and (deptname ='영업' or deptname='개발'));
        
insert into department values(5,'연구',''); /* FLOOR       NUMBER,    -> NULL 나옴
                                               FLOOR      NUMBER DEFAULT 0,  -> 0 나옴 */

select * from department;

