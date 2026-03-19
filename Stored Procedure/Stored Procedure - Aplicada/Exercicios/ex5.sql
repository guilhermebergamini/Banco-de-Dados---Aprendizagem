DELIMITER $$
DROP PROCEDURE IF EXISTS pr_remover_produto $$
CREATE PROCEDURE pr_remover_produto (IN p_id INT)
BEGIN
    DECLARE v_estoque INT;
    SELECT estoque INTO v_estoque FROM produtos WHERE id = p_id;
    IF v_estoque IS NULL THEN
        SELECT "Erro: Produto não encontrado" as Mensagem;
    ELSEIF (v_estoque <= 0) THEN
        DELETE FROM vendas WHERE produto_id = p_id;
        DELETE FROM produtos WHERE id = p_id;
        SELECT "Sucesso" as Mensagem;
    ELSE
        SELECT "Erro: Estoque válido, não pode remover" as Mensagem;
    END IF;
END $$
DELIMITER ;

CALL pr_remover_produto(1); --teste com produto com estoque 
CALL pr_remover_produto(3); --teste com produto sem estoque mas antes tem que rodar um update para deixar o estoque do produto 3 igual a 0
CALL pr_remover_produto(999); --teste com produto inexistente

-- Para o teste do produto 3, rode o seguinte comando antes de chamar a procedure:
UPDATE produtos SET estoque = 0 WHERE id = 3;