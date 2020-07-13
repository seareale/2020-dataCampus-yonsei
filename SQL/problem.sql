/* 20 �� �� 50 �� �μ����� �ٹ��ϴ� ��� ������� LAST_NAME �� �μ� ��ȣ�� ���ĺ������� ��ȸ�Ѵ�. */
select e.last_name, e.department_id
from employees e
where e.department_id = 20 or e.department_id = 50
order by e.last_name;


/* �Ŵ����� ���� ������� LAST_NAME �� JOB_ID �� ��ȸ�Ѵ�. */
select e.last_name, e.job_id
from employees e
where e.manager_id is null;

/* LAST_NAME �� �׹�° ���ڰ� a �� ������� LAST_NAME �� ��ȸ�Ѵ�. */
select e.last_name
from employees e
where e.last_name like '___a%';

select e.last_name
from employees e
where substr(e.last_name,4,4) = 'a';


/* �þ�Ʋ�� ��� ��� ������� LAST_NAME, �μ� ��, ���� ID �� ���� ���� ��ȸ�Ѵ�. */
select e.last_name, d.department_name, l.location_id, l.city
from employees e, departments d, locations l
where e.department_id = d.department_id and d.location_id = l.location_id and l.city ='Seattle';


/* �ڽ��� �Ŵ������� ���� ���� ������� LAST_NAME �� ������� ��ȸ�Ѵ�. */
select e.last_name, e.hire_date
from employees e, employees m
where e.manager_id = m.employee_id and e.hire_date < m.hire_date;
