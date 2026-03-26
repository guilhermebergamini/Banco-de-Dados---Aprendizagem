DELIMITER $$

DROP FUNCTION IF EXISTS  fn_atualiza_estoque $$
CREATE FUNCTION fn_atualiza_estoque (e_id INT, qntd_vendida INT)
RETURNS INT

NOT DETERMINISTIC
MODIFIES SQL DATA

BEGIN
    DECLARE quantidade INT;
    SET quantidade = estoque - qntd_vendida;
    UPDATE produtos SET WHERE id=e_id;
END $$
DELIMITER ;



