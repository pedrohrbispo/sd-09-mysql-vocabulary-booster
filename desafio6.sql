SELECT 
J.JOB_TITLE AS `Cargo`, 
JB.START_DATE AS `Data de início do cargo`, 
D.DEPARTMENT_NAME AS `Departamento`, 
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo` 
FROM hr.employees AS E 
INNER JOIN hr.job_history AS JB ON JB.EMPLOYEE_ID = E.EMPLOYEE_ID 
INNER JOIN hr.jobs AS J ON J.JOB_ID = JB.JOB_ID 
INNER JOIN hr.departments AS D ON D.DEPARTMENT_ID = JB.DEPARTMENT_ID 
ORDER BY `Nome completo` DESC, `Cargo` ASC;
