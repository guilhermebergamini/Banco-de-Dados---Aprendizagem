DELIMITER $$
CREATE PROCEDURE CalcularDesconto(IN valor DECIMAL(6,2))
BEGIN
DECLARE valor_final DECIMAL(6,2);
DECLARE status_desconto VARCHAR(20); ;

IF valor >= 100 THEN
SET valor_final = valor - (valor * 0.1) ;
SET status_desconto = 'Desconto Concedido';
ELSE
SET valor_final = valor;
SET status_desconto = 'Sem Desconto';
END IF;
SELECT 
valor AS 'Valor Produto',
valor_final AS 'Valor dps Desconto',
status_desconto AS 'Situação Desconto';
END $$
DELIMITER ;