DELIMITER $$

DROP FUNCTION IF EXISTS fn_media_vendas $$
CREATE FUNCTION fn_media_vendas (mes INT, ano INT)
RETURNS DECIMAL(10,2)
READS SQL DATA
DETERMINISTIC
BEGIN
    DECLARE media DECIMAL(10,2);

    SELECT AVG(valor_total)
    INTO media
    FROM vendas
    WHERE MONTH(data_venda) = mes
      AND YEAR(data_venda) = ano;
    RETURN media;
END $$
DELIMITER ;
SELECT fn_media_vendas(3,2026);
    