DELIMITER $$

CREATE PROCEDURE excluir_cliente(IN cliente_id INT)
BEGIN

    START TRANSACTION;
    DELETE from pedido WHERE id_cliente = cliente_id;
    DELETE from clientes WHERE id = cliente_id;

    IF (ROW_COUNT() = 0 ) THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END $$
DELIMITER ;

