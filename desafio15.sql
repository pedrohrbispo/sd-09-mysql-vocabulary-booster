USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN 
(SELECT ROUND(AVG(T1.SALARY), 2) AS 'Média salarial'
FROM hr.employees AS T1
INNER JOIN hr.jobs AS T2
ON T1.JOB_ID = T2.JOB_ID
WHERE T2.JOB_TITLE = cargo);
END $$

DELIMITER ;
