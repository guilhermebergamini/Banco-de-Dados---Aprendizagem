DELIMITER $$
DROP PROCEDURE IF EXISTS pr_distribuirBonus $$
CREATE PROCEDURE pr_distribuirBonus (IN valor DECIMAL (5,2) , IN qntd int)
BEGIN
    DECLARE v_contador int DEFAULT 1;
    
    bonificao_loop:loop

    IF v_contador > qntd THEN
        LEAVE bonificao_loop;
    END IF;
    
    UPDATE funcionarios SET salario = salario + valor WHERE id = v_contador;
    SET v_contador = v_contador + 1;

    END LOOP bonificao_loop;
END $$
DELIMITER ;

CALL pr_distribuirBonus (500.00, 3)