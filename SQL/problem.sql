/* 20 번 및 50 번 부서에서 근무하는 모든 사원들의 LAST_NAME 및 부서 번호를 알파벳순으로 조회한다. */
select e.last_name, e.department_id
from employees e
where e.department_id = 20 or e.department_id = 50
order by e.last_name;


/* 매니저가 없는 사람들의 LAST_NAME 및 JOB_ID 를 조회한다. */
select e.last_name, e.job_id
from employees e
where e.manager_id is null;

/* LAST_NAME 의 네번째 글자가 a 인 사원들의 LAST_NAME 을 조회한다. */
select e.last_name
from employees e
where e.last_name like '___a%';

select e.last_name
from employees e
where substr(e.last_name,4,4) = 'a';


/* 시애틀에 사는 모든 사람들의 LAST_NAME, 부서 명, 지역 ID 및 도시 명을 조회한다. */
select e.last_name, d.department_name, l.location_id, l.city
from employees e, departments d, locations l
where e.department_id = d.department_id and d.location_id = l.location_id and l.city ='Seattle';


/* 자신의 매니저보다 먼저 고용된 사원들의 LAST_NAME 및 고용일을 조회한다. */
select e.last_name, e.hire_date
from employees e, employees m
where e.manager_id = m.employee_id and e.hire_date < m.hire_date;
