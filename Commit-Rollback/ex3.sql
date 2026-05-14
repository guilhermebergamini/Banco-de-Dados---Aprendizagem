DELIMITER $$
CREATE PROCEDURE reserva_ingresso(IN evento_id INT , IN cliente_id INT , IN qntd INT)
BEGIN 

    DECLARE v_ingressos_disponiveis INT DEFAULT 0;
    DECLARE v_existe_evento INT DEFAULT 0;

    START TRANSACTION;

    SELECT COUNT(*) INTO v_existe_evento from eventos WHERE id = evento_id

    IF v_existe_evento = 0 THEN
        ROLLBACK;
    ELSE
        SELECT ingressos_disponiveis into v_ingressos_disponiveis from eventos WHERE id = evento_id;

        INSERT INTO reservas (id_evento , id_cliente , qtd) VALUES (evento_id, cliente_id , qntd);

        COMMIT
    END IF;
    END IF;
END $$

DELIMITER ;