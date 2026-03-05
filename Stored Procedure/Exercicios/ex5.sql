DELIMITER $$
    CREATE PROCEDURE ClassificarFaixaEtaria(IN idade INTEGER(3))
    BEGIN
    DECLARE msg VARCHAR(20);

    if idade < 13 THEN
    SET msg = 'Criança';
    elseif idade <= 17  THEN
    SET msg = 'Adolescente';
    elseif idade <= 59 THEN
    SET msg = 'Adulto';
    else
    SET msg = 'Idoso';
    end if;
    SELECT msg AS 'Categoria';
    END $$
    DELIMITER ;
    CALL ClassificarFaixaEtaria(10);