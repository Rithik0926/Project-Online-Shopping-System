DELIMITER //
CREATE PROCEDURE PlaceOrder (
    IN cust_id INT,
    IN prod_id INT,
    IN qty INT
)
BEGIN
    DECLARE stock_remaining INT;
    DECLARE message TEXT;

    SELECT stock INTO stock_remaining FROM Product WHERE prod_id = prod_id;

    IF stock_remaining < qty THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = CONCAT('Insufficient stock for product ID: ', prod_id);
    ELSE
        INSERT INTO Orders (cust_id) VALUES (cust_id);
        INSERT INTO Order_Details (order_id, prod_id, quantity)
        VALUES (LAST_INSERT_ID(), prod_id, qty);
        UPDATE Product SET stock = stock - qty WHERE prod_id = prod_id;
        SET message = CONCAT('Order placed successfully for product ID: ', prod_id);
        SELECT message AS confirmation;
    END IF;
END //
DELIMITER ;
