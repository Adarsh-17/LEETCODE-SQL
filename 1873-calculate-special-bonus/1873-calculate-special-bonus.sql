# Write your MySQL query statement below

select employee_id,IF(MOD(employee_id,2) AND name NOT LIKE 'M%',salary,0) AS bonus from Employees order by employee_id;