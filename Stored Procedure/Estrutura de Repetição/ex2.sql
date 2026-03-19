DELIMITER $$
DROP PROCEDURE IF EXISTS pr_gerarParcelas $$
CREATE PROCEDURE pr_gerarParcelas (IN qntdParcelas INT, IN valorTotal DECIMAL(5,2))
BEGIN 
    DECLARE v_contador int DEFAULT 1;
    DECLARE calculo DECIMAL (5,2);

    SET calculo = valorTotal / qntdParcelas;

    REPEAT
        INSERT INTO parcelas (valor_parcela, data_vencimento) 
        VALUES (calculo,  DATE_ADD(CURDATE(), INTERVAL v_contador MONTH));
        SET v_contador = v_contador + 1;
        UNTIL v_contador > qntdParcelas
    
    END REPEAT;
END $$
DELIMITER ;

CALL pr_gerarParcelas(5, 1000);
