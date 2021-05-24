SELECT JOB_TITLE AS 'Cargo', MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
ROUND(AVG(MIN_SALARY) DIV 12, 2) AS 'Média mínima mensal',
ROUND(AVG(MAX_SALARY) DIV 12, 2) AS 'Média máxima mensal'
FROM hr.jobs
GROUP BY JOB_TITLE
ORDER BY `Variação Salarial` ASC, `Cargo` ASC;
