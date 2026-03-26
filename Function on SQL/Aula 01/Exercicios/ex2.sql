DELIMITER $$

DROP FUNCTION IF EXISTS fn_fahrenheit_para_celsius $$
CREATE FUNCTION fn_fahrenheit_para_celsius (x DECIMAL (5,2))
RETURNS DECIMAL (5,2)
DETERMINISTIC
NO SQL
BEGIN
    DECLARE c DECIMAL(5,2);
    SET c = (x - 32) * 5/9;
    return c;
END $$
DELIMITER ;

SELECT fn_fahrenheit_para_celsius(98.6); 

/*tem que retornar 37.00 */
