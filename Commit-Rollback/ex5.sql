DELIMITER $$
CREATE PROCEDURE devolver_produto (IN prod_id INT , IN prod_qntd INT)
BEGIN
    START TRANSACTION;
        UPDATE produtos SET estoque = estoque + prod_qntd WHERE prod_id = id;
        COMMIT;