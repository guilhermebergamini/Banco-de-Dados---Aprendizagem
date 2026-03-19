DELIMITER $$
    CREATE PROCEDURE CalcularMulta(IN velocidade DECIMAL(5,2))
    BEGIN
        DECLARE multa DECIMAL(6,2);
        DECLARE msg VARCHAR(20);
        multa = 200;

        if velocidade > 80 THEN
        SET msg = 'Multado em R$ 200,00';
        else
        SET msg = 'Velocidade dentro do permitido';
        end if;
        SELECT velocidade AS 'Velocidade', msg AS 'Mensagem';
    END $$
    DELIMITER ;
    CALL CalcularMulta(100);