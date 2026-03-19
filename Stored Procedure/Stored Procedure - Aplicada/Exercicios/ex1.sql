DELIMITER $$
CREATE PROCEDURE pr_desativar_clientes_antigos (IN p_data_limite DATE)
BEGIN
  UPDATE clientes
  SET status = 'Inativo'
  WHERE data_ultima_compra IS NOT NULL
    AND data_ultima_compra < p_data_limite;
  SELECT * from clientes;
END $$
DELIMITER ;

