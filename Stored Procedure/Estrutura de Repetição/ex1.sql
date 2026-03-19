DELIMITER $$
DROP PROCEDURE IF EXISTS pr_popularlogs $$
CREATE PROCEDURE pr_popularlogs (IN qntdLogs int)
BEGIN 
    DECLARE v_contador int DEFAULT 1;
    WHILE v_contador <= qntdLogs DO
        INSERT INTO logs_acesso (id,mensagem, data_registro) VALUES (CONCAT('Logs de teste numero'))


DELIMITER $$