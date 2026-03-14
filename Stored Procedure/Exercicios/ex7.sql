DELIMITER $$
    CREATE PROCEDURE SugerirRoupa(IN temperatura DECIMAL(4,1))
    BEGIN 
    SELECT temperatura AS "Graus Celsius", IF(temperatura < 15, 'Leve um Casaco', 'Roupa Leve') AS 'Sugestao';
    END $$
    DELIMITER ;

    CALL SugerirRoupa(10);
    CALL SugerirRoupa(20);
    CALL SugerirRoupa(30);
    CALL SugerirRoupa(40);
    CALL SugerirRoupa(50);
    CALL SugerirRoupa(60);
    CALL SugerirRoupa(70);
    CALL SugerirRoupa(80);
    CALL SugerirRoupa(90);
    CALL SugerirRoupa(100);