DELIMITER $$
DROP PROCEDURE IF EXISTS pr_popularlogs $$
CREATE PROCEDURE pr_popularlogs (IN qntdLogs int)
BEGIN 
    DECLARE v_contador int DEFAULT 1;
    WHILE v_contador <= qntdLogs DO
        INSERT INTO logs_acesso (mensagem, data_registro) 
        VALUES (CONCAT('Logs de teste numero ', v_contador), NOW());
        SET v_contador = v_contador + 1;
    END WHILE;

END $$
DELIMITER ;

CALL pr_popularlogs(2);