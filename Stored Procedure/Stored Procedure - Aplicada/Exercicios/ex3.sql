DELIMITER $$
CREATE PROCEDURE pr_reajuste_salarial (IN p_dpto VARCHAR(50), IN p_valor DECIMAL(10,2))
BEGIN
    UPDATE funcionarios SET salario = salario + p.valor WHERE departamento = p_dpto;
    SELECT * FROM funcionarios WHERE departamento = p_dpto;
END $$
DELIMITER ;
