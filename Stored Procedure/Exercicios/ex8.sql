DELIMITER $$

CREATE PROCEDURE Autenticar(IN senha VARCHAR(20), OUT sucesso_out TINYINT(1))
BEGIN
    IF senha = '1234' THEN
        SET sucesso_out = true;
    ELSE
        SET sucesso_out = false;
    END IF;

    SELECT sucesso_out AS Sucesso;
END $$

DELIMITER ;
   

