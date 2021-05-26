USE w3schools;
DELIMITER $$

CREATE TRIGGER insert_new_order_date
	BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
	SET NEW.OrderDate = DATE(NOW());
END $$

DELIMITER ;
