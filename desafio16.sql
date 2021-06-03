USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
  BEGIN
    DECLARE total_empregos INT;
    SELECT COUNT(*) FROM job_history jh
    INNER JOIN employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    WHERE e.EMAIL = email INTO total_empregos;
    RETURN total_empregos;
  END $$

DELIMITER ;
