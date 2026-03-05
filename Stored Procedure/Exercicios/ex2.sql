DELIMITER $$
    CREATE PROCEDURE ClassificarClima(IN temperatura DECIMAL(4,1))
    BEGIN

    DECLARE msg VARCHAR(15);

    if temperatura > 30 THEN
    SET msg = 'Muito Quente';

    elseif temperatura >= 20 THEN
    SET msg = 'Agradável';

    else 
    SET msg = 'Frio';

    END IF;

    SELECT
    temperatura as 'Temperatura',
    msg as 'Classificacao';
END $$
DELIMITER ;