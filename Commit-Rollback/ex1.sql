DELIMITER $$

CREATE PROCEDURE atualizar_estoque()
BEGIN
    START TRANSACTION;

    UPDATE produtos
    SET estoque = 0
    WHERE estoque < 0;

    IF ROW_COUNT() >= 0 THEN
        COMMIT;
    ELSE
        ROLLBACK;
    END IF;
END $$
DELIMITER ;