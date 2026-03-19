# Stored Procedure - Banco de Dados Relacional

## Vantagens em executar a lógica dentro do servidor 

-- Redução do tráfego entre aplicação e banco. Em vez de enviar vários
comandos SQL daaplicação, a procedure executa tudo de uma vez.

-- Reuso de lógica. Funções e procedures podem ser chamadas por diversas
partes do sistema.

-- Centralização de regras de negócio. Validações críticas ficam no servidor,
evitando divergências entre aplicações diferentes.

-- Melhor desempenho em certas operações. Especialmente quando o
processamento é feito diretamente nos dados sem múltiplas idas e vindas.

-- Segurança. É possível conceder a um usuário permissão para executar a
procedure, mas não para acessar diretamente a tabela

## Vantagens das rotinas armazenadas 

-- Desempenho melhor em operações complexas. Menos comunicação entre
cliente e servidor.

-- Regras de negócio centralizadas. Se uma regra muda, basta alterar a
procedure, não o sistema inteiro.

-- Segurança aprimorada. É possível negar acesso direto às tabelas, mas
permitir CALL minha_procedure().

-- Reuso e padronização. As mesmas rotinas podem ser usadas por várias
aplicações (web, mobile, scripts…).

# Desvantagens das rotinas armazenadas

-- Maior acoplamento ao SGBD. Se trocar MySQL por PostgreSQL ou SQL
Server, as rotinas precisam ser reescritas.

-- Dificuldade de versionamento. Procedures ficam dentro do DB; exige
disciplina para manter scripts sincronizados.

-- Menos ferramentas de depuração. Não existe debugging tão avançado
quanto em linguagens como Java, Python, C#.

-- Pode virar gargalo. Excesso de lógica no banco pode sobrecarregar o
servidor