SELECT
    JOB_TITLE AS `Cargo`,
    ROUND(AVG(SALARY), 2) AS `Média salarial`,
    CASE
    WHEN AVG(SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS `Senioridade`
FROM hr.employees INNER JOIN hr.jobs ON hr.jobs.JOB_ID = hr.employees.JOB_ID
GROUP BY hr.employees.JOB_ID
ORDER BY `Média salarial` ASC, `Cargo` ASC;
