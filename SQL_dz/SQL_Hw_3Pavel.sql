--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, e.id, s.monthly_salary from  
employees e
join employee_salary on employee_id = e.id
join salary s on salary_id  = s.id

--2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, s.monthly_salary 
from employees e
join employee_salary on employee_id = e.id 
join salary s on s.id = salary_id
where s.monthly_salary < 2000

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select  employee_name, monthly_salary
from employees e
right OUTER JOIN employee_salary on employee_id = e.id 
right outer join salary s on salary_id = s.id
where employee_name is null

--4. ������� ��� ���������� ������� ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select  employee_name, salary_id, monthly_salary
from employees e
right OUTER JOIN employee_salary on employee_id = e.id 
right outer join salary s on s.id = salary_id
where employee_name is null and monthly_salary < 2000

--5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, salary_id from employees e 
left outer join employee_salary es on employee_id = e.id 
where salary_id is null

--6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name 
from employees e
join roles_employee on employee_id = e.id 
join roles r on r.id = role_id 

--7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name
from employees e 
join roles_employee on employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%Java %'

--8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name
from employees e 
join roles_employee on employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%Python%'

-- 9. ������� ����� � ��������� ���� QA ���������
select employee_name, role_name
from employees e 
join roles_employee on employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%QA%'

--10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name
from employees e 
join roles_employee on employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%Manual QA%'

-- 11. ������� ����� � ��������� ��������������� QA

select employee_name, role_name
from employees e 
join roles_employee on employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%Automation QA%'

-- 12. ������� ����� � �������� Junior ������������
select employee_name, role_name, monthly_salary
from employees e 
join employee_salary es on employee_id = e.id
join salary s on salary_id = s.id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%Junior%'

-- 13. ������� ����� � �������� Middle ������������
select employee_name, role_name, monthly_salary
from employees e 
join employee_salary es on employee_id = e.id
join salary s on salary_id = s.id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%Middle%'

--14. ������� ����� � �������� Senior ������������
select employee_name, role_name, monthly_salary
from employees e 
join employee_salary es on employee_id = e.id
join salary s on salary_id = s.id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%Senior%'

--15. ������� �������� Java �������������
select role_name, monthly_salary
from employees e 
join employee_salary es on employee_id = e.id
join salary s on salary_id = s.id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%Java %'

-- 16. ������� �������� Python �������������
select role_name, monthly_salary
from employees e 
join employee_salary es on employee_id = e.id
join salary s on salary_id = s.id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%Python%'

--17. ������� ����� � �������� Junior Python �������������
select employee_name, role_name, monthly_salary
from employees e 
join employee_salary es on employee_id = e.id
join salary s on salary_id = s.id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%Junior Python%'

--18. ������� ����� � �������� Middle JS �������������
select employee_name, role_name, monthly_salary
from employees e 
join employee_salary es on employee_id = e.id
join salary s on salary_id = s.id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%Middle JavaScript%'

--19. ������� ����� � �������� Senior Java �������������
select employee_name, role_name, monthly_salary
from employees e 
join employee_salary es on employee_id = e.id
join salary s on salary_id = s.id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%Senior Java %'

--20. ������� �������� Junior QA ���������
select employee_name, role_name, monthly_salary
from employees e 
join employee_salary es on employee_id = e.id
join salary s on salary_id = s.id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%Junior  Automation QA%' or role_name like '%Junior Manual QA%';

--21. ������� ������� �������� ���� Junior ������������
select avg(monthly_salary)
from salary s
join employee_salary es on salary_id = s.id
join employees e on es.employee_id = e.id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = role_id
where role_name like '%Junior%'

--22. ������� ����� ������� JS �������������
select sum(monthly_salary)
from salary s
join employee_salary es on salary_id = s.id
join employees e on es.employee_id = e.id
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%JavaScript%'

--23. ������� ����������� �� QA ���������
select min(monthly_salary)
from salary s
join employee_salary es on salary_id = s.id
join employees e on es.employee_id = e.id
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%QA%'

--24. ������� ������������ �� QA ���������
select max(monthly_salary)
from salary s
join employee_salary es on salary_id = s.id
join employees e on es.employee_id = e.id
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%QA%'

--25. ������� ���������� QA ���������
select count(employee_name)
from employees e
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%QA%'

--26. ������� ���������� Middle ������������.
select count(employee_name)
from employees e
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%Middle%'

--27. ������� ���������� �������������
select count(employee_name)
from employees e
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%developer%' 

--28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary)
from salary s
join employee_salary es on salary_id = s.id
join employees e on es.employee_id = e.id
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = role_id
where role_name like '%developer%'

--29 ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.employee_id = r.id
order by employee_name, role_name, monthly_salary

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.employee_id = r.id
where monthly_salary between 1700 and 2300
order by employee_name, role_name, monthly_salary

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.employee_id = r.id
where monthly_salary < 2300
order by employee_name, role_name, monthly_salary

--32.������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary
from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on re.employee_id = r.id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000 
order by employee_name, role_name, monthly_salary


