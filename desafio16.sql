DELIMITER !!
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
  RETURNS INT READS SQL DATA
  BEGIN
    RETURN (SELECT COUNT(*)
      FROM hr.job_history AS jh
        INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
      WHERE e.EMAIL =  email);
  END
!! DELIMITER ;
