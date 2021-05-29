SELECT 
    J.JOB_TITLE AS 'Cargo',
    ROUND(AVG(E.SALARY),2) AS 'Média salarial',
CASE
    WHEN E.SALARY <= 5800 THEN 'Júnior'
    WHEN E.SALARY > 5801 AND E.SALARY <= 7500 THEN 'Pleno'
    WHEN E.SALARY > 7501 AND E.SALARY <= 10500 THEN 'Sênior'
    WHEN E.SALARY > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM
    hr.employees AS E
INNER JOIN
    hr.jobs AS J ON J.JOB_ID = E.JOB_ID
GROUP BY J.JOB_TITLE
ORDER BY `Média salarial` ASC;
