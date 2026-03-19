DELIMITER $$ 
DROP PROCEDURE IF EXISTS pr_total_vendas_periodo;
CREATE PROCEDURE pr_total_vendas_periodo (IN data_inicio DATE, IN data_fim DATE, OUT p_total_final DECIMAL(10,2))
BEGIN
    SELECT IFNULL(SUM(valor_total), 0) INTO p_total_final FROM vendas WHERE data_venda BETWEEN data_inicio AND data_fim;
    SELECT p_total_final;  -- Debug: mostra o valor dentro da procedure
END $$
DELIMITER ;

SET @resultado = NULL;
CALL pr_total_vendas_periodo('2026-01-10', '2026-03-12', @resultado);
SELECT @resultado;