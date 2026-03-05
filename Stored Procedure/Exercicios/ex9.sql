DELIMITER $$

CREATE PROCEDURE ConverterNota(IN nota DECIMAL(3,1))
BEGIN
    DECLARE msg VARCHAR(1);

    IF nota < 5 THEN
        SET msg = 'F';
    ELSEIF nota >= 5 AND nota <= 6.9 THEN
        SET msg = 'C';
    ELSEIF nota >= 7 AND nota <= 8.9 THEN
        SET msg = 'B';
    ELSE
        SET msg = 'A';
    END IF;

    SELECT
        nota AS 'Nota Numerica',
        msg  AS 'Conceito';
END $$

DELIMITER ;

CALL ConverterNota(9);