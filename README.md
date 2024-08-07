# SQL Query Optimization Project

## Objective

This project aims to optimize SQL queries in a specific database, as outlined in the `script_consultas.sql` file. The goal is to improve query performance by applying SQL best practices, including:

- Using the `EXPLAIN` command to analyze the execution plan of queries.
- Optimizing queries by using `JOINs` between tables and specifying the desired columns instead of using `*`.
- Creating indexes to enhance query performance, focusing mainly on columns used in `WHERE` clauses.
- Creating `views` for each adjusted query.

## Procedure

1. **Initial Analysis and Execution:**
   - Run the `EXPLAIN` command for each query in the `script_consultas.sql` file to get details about the execution plans.
   - Capture screenshots of the `EXPLAIN` output.

2. **Query Optimization:**
   - Modify the queries to use `JOINs` and explicitly specify the columns to be returned.
   - Create appropriate indexes on the columns used in `WHERE` clauses to improve performance.
   - Run the `EXPLAIN` command again to check the impact of the optimizations and capture new screenshots.

3. **View Creation:**
   - Create a `view` for each optimized query with `JOINs`.

4. **Documentation and Delivery:**
   - Store all adjusted queries and additional commands in `.sql` scripts.
   - Use comments to organize and explain the scripts.
   - Prepare a document outlining the changes and improvements made.

## Files

- `script_consultas.sql`: Contains the original queries to be analyzed and optimized.
- `.sql` scripts with adjusted queries and explanatory comments.

## Notes

Ensure that you follow best practices for query optimization and document all changes made to facilitate review and understanding of the work completed.

# Projeto de Otimização de Consultas SQL-Traduzido:

## Objetivo

Este projeto visa otimizar consultas SQL em um banco de dados específico, conforme descrito no arquivo `script_consultas.sql`. O objetivo é melhorar o desempenho das consultas através da aplicação de boas práticas de SQL, incluindo:

- Uso do comando `EXPLAIN` para analisar o plano de execução das consultas.
- Otimização das consultas utilizando `JOINs` entre as tabelas e especificação das colunas desejadas ao invés de utilizar `*`.
- Criação de índices para melhorar a performance das consultas, focando principalmente nas colunas usadas nas cláusulas `WHERE`.
- Criação de `views` para cada consulta ajustada.

## Procedimento

1. **Análise e Execução Inicial:**
   - Execute o comando `EXPLAIN` para cada consulta presente no arquivo `script_consultas.sql` para obter detalhes sobre a execução das consultas.
   - Capture prints das saídas do comando `EXPLAIN`.

2. **Otimização das Consultas:**
   - Ajuste as consultas para usar `JOINs` e defina explicitamente as colunas a serem retornadas.
   - Crie índices apropriados nas colunas usadas nas cláusulas `WHERE` para melhorar o desempenho.
   - Execute novamente o comando `EXPLAIN` para verificar o impacto das otimizações e capture novos prints.

3. **Criação de Views:**
   - Crie uma `view` para cada consulta otimizada com `JOINs`.

4. **Documentação e Entrega:**
   - Armazene todas as consultas ajustadas e os comandos adicionais em scripts `.sql`.
   - Utilize comentários para organizar e explicar os scripts.
   - Prepare um documento com as descrições das mudanças e as melhorias obtidas.

## Arquivos

- `script_consultas.sql`: Contém as consultas originais a serem analisadas e otimizadas.
- Scripts `.sql` com consultas ajustadas e comentários explicativos.

## Observações

Certifique-se de seguir as melhores práticas para otimização de consultas e documentar todas as alterações feitas para facilitar a revisão e a compreensão do trabalho realizado.
