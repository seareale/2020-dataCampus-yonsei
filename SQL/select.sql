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
where empname = '��â��')
union
(select deptno
from department
where deptname = '����');

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
/* desc �� , �տ� �ִ� deptname���� ������� ���� */

select empname, title
from employee
where title =(select title
            from employee
            where empname = '�ڿ���'); /* -> return ���� */
            
select empname
from employee
where dno in (select deptno
            from department
            where deptname = '����' or deptname='����');  /* -> return (1, 3) */

select empname
from employee e, department d
where e.dno = d.deptno
    and (d.deptname ='����' or d.deptname = '����');

select empname
from employee e
where exists
    (select *
    from department d
    where e.dno = d.deptno
        and (deptname ='����' or deptname='����'));
        
insert into department values(5,'����',''); /* FLOOR       NUMBER,    -> NULL ����
                                               FLOOR      NUMBER DEFAULT 0,  -> 0 ���� */

select * from department;

