DELIMITER $$
CREATE PROCEDURE pr_adicionar_usuario (IN p_nome VARCHAR (100), IN p_email VARCHAR (100) , IN p_idade INT)
BEGIN
    DECLARE msg VARCHAR(50);
    IF (p_idade < 18) THEN
       SET msg = "Erro: Idade minima nao atingida";
       SELECT msg;
    elseif (p_idade >= 18) THEN
        INSERT INTO usuarios (nome, email, idade) VALUES (p_nome, p_email, p_idade);
        SELECT * FROM usuarios WHERE id = LAST_INSERT_ID();
    END IF;
END $$
DELIMITER ;

CALL pr_adicionar_usuario ("Ana","ana@gmail.com",20)