DELIMITER $$
CREATE PROCEDURE find_greatest(
    IN num1 INT,
    IN num2 INT,
    IN num3 INT,
    OUT greatest INT
)
BEGIN
    SET greatest = num1;  
    IF num2 > greatest THEN
        SET greatest = num2;
    END IF;
    IF num3 > greatest THEN
        SET greatest = num3;
    END IF;
END $$
DELIMITER ;
SET @greatest_value = 0;
CALL find_greatest(20, 5, 35, @greatest_value);
SELECT @greatest_value AS GreatestValue;
