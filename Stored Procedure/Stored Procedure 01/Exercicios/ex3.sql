DELIMITER $$
CREATE PROCEDURE CalcularFrete(IN valorCompra DECIMAL(6,2) , IN tipoentrega INTEGER(2))
BEGIN
    DECLARE valorTotal DECIMAL(6,2);
CASE
    WHEN tipoentrega = 1 THEN
    SET valorTotal = valorCompra + 10.00;
    WHEN tipoentrega = 2 THEN
    SET valorTotal = valorCompra + 25.00;
    ELSE
    SET valorTotal = valorCompra;
END CASE;
SELECT valorCompra AS 'Subtotal', valorTotal AS 'Total com Frete';
END $$
DELIMITER ;
CALL CalcularFrete(100, 1);
CALL CalcularFrete(100, 2);
CALL CalcularFrete(100, 3);