DELIMITER $$
    CREATE PROCEDURE ReajustarSalario(IN salarioAtual DECIMAL(6,2), IN cargo INTEGER(1))
    BEGIN 
    DECLARE novoSalario DECIMAL(6,2);
    DECLARE aumento DECIMAL(6,2);
    CASE
    WHEN
    cargo = 1 THEN
        SET aumento = 0.1;
        SET novoSalario = salarioAtual + (salarioAtual * aumento);
        WHEN
        cargo = 2 THEN
        SET aumento = 0.2;
        SET novoSalario = salarioAtual + (salarioAtual * aumento);
        WHEN
        cargo = 3 THEN
        SET aumento=0.3;
        SET novoSalario = salarioAtual + (salarioAtual * aumento);
        else
        SET aumento = 0;
        SET novoSalario = salarioAtual;
    END CASE;
    SELECT salarioAtual AS 'Salario Atual', novoSalario AS 'Salario Reajustado';
    END $$
    DELIMITER ;
    
    CALL ReajustarSalario(1000, 1);
    CALL ReajustarSalario(1000, 2);
    CALL ReajustarSalario(1000, 3);
    CALL ReajustarSalario(1000, 4);