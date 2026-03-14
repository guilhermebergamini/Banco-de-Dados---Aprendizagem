DELIMITER $$
DROP PROCEDURE IF EXISTS pr_remover_produto;
CREATE PROCEDURE pr_remover_produto (IN p_id INT)
BEGIN
    DECLARE v_estoque INT;
    SELECT estoque INTO v_estoque FROM produtos WHERE id = p_id;
    IF v_estoque IS NULL THEN
        SELECT "Erro: Produto não encontrado" as Mensagem;
    ELSEIF (v_estoque < 0) THEN
        DELETE FROM produtos WHERE id = p_id;
        SELECT "Sucesso" as Mensagem;
    ELSE
        SELECT "Erro: Estoque válido, não pode remover" as Mensagem;
    END IF;
END $$
DELIMITER ;

CALL pr_remover_produto(1);