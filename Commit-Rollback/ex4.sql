DELIMITER $$
CREATE PROCEDURE atualizar_salario_historico (IN func_id INT , IN func_salario DECIMAL (10,2))
BEGIN
    DECLARE salario_atual DECIMAL(10,2);
    DECLARE novo_salario DECIMAL(10,2);

    START TRANSACTION;

    SELECT salario INTO salario_atual FROM funcionarios WHERE id = func_id;

    IF salario_atual IS NULL THEN
        ROLLBACK;
    ELSE
        SET novo_salario = salario_atual + aumento;

        UPDATE funcionarios
        SET salario = novo_salario
        WHERE id = func_id;

        INSERT INTO historico_salarios(id_funcionario, novo_salario, data)
        VALUES (func_id, novo_salario, NOW());

        COMMIT;
    END IF;
    END $$
DELIMITER ;