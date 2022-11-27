# Write your MySQL query statement below
select employee_id, CASE when employee_id% 2 != 0 AND name NOT LIKE 'M%' THEN salary
else 0 END AS bonus
from Employees
order by employee_id;