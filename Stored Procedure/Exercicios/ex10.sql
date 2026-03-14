DELIMITER $$

CREATE PROCEDURE TipoTriangulo (
    IN l1 DECIMAL(5,2),
    IN l2 DECIMAL(5,2),
    IN l3 DECIMAL(5,2)
)
BEGIN
    DECLARE msg VARCHAR(20);

    IF (l1 + l2 > l3) AND (l1 + l3 > l2) AND (l2 + l3 > l1) THEN
        IF l1 = l2 AND l2 = l3 THEN
            SET msg = 'Equilatero';
        ELSEIF l1 = l2 OR l1 = l3 OR l2 = l3 THEN
            SET msg = 'Isosceles';
        ELSE
            SET msg = 'Escaleno';
        END IF;
    ELSE
        SET msg = 'Nao forma um triangulo';
    END IF;

    SELECT msg AS 'Resultado';
END $$
DELIMITER ;