DELIMITER !!
CREATE TRIGGER trigger_order_date
  BEFORE INSERT ON w3schools.orders
  FOR EACH ROW
    BEGIN
      SET NEW.OrderDate = CURRENT_DATE();
    END
!! DELIMITER ;
