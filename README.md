# SQL Query Optimization Project

This project aims to optimize SQL queries using a specific database. The activities were performed based on a query script file and involved several optimization steps.

## Project Description

1. **Queries and Analysis**
   - SQL queries were extracted from the `script_consultas.sql` file found under "Conteúdos > Material complementar".
   - Each query was analyzed using the `EXPLAIN` command to gather execution details and identify potential improvements.

2. **Optimization**
   - Adjustments were made to improve query performance:
     - Usage of `JOINs` to efficiently combine tables.
     - Removal of asterisks (*) and specification of required columns to optimize data retrieval.
   - Indexes were created to enhance query efficiency, especially on columns used in `WHERE` clauses.

3. **Reevaluation**
   - After optimizations, the `EXPLAIN` command was run again to check for improvements in performance.

4. **Creation of Views**
   - Views were created for each of the adjusted queries using `JOINS`, making it easier to reuse and query the data.

5. **SQL Scripts**
   - All adjusted scripts, including optimizations and created views, were stored in `.sql` files.
   - Comments were added to the scripts for better organization and understanding.

## File Structure

- `optimized_queries.sql`: Contains the adjusted and optimized SQL queries.
- `views.sql`: Contains the views created for the optimized queries.
- `scripts.sql`: Contains the scripts with applied adjustments and optimizations.

Be sure to review the scripts and provided details to understand the changes and improvements made.



# Projeto de Otimização de Consultas SQL-Traduzido

Este projeto tem como objetivo realizar a otimização de consultas SQL usando um banco de dados específico. As atividades foram executadas com base em um arquivo de script de consultas e envolveram várias etapas de otimização.

## Descrição do Projeto

1. **Consultas e Análise**
   - As consultas SQL foram extraídas do arquivo `script_consultas.sql` encontrado na seção "Conteúdos > Material complementar".
   - Cada consulta foi analisada utilizando o comando `EXPLAIN` para obter detalhes sobre a execução e identificar possíveis melhorias.

2. **Otimização**
   - Foram realizados ajustes nas consultas para melhorar a performance:
     - Uso de `JOINs` para unir as tabelas de forma mais eficiente.
     - Remoção de asteriscos (*) e especificação das colunas necessárias para otimizar o retorno dos dados.
   - Criação de índices para melhorar a eficiência das consultas, especialmente em colunas utilizadas nas cláusulas `WHERE`.

3. **Reavaliação**
   - Após as otimizações, o comando `EXPLAIN` foi executado novamente para verificar as melhorias no desempenho.

4. **Criação de Views**
   - Views foram criadas para cada uma das consultas ajustadas utilizando `JOINS`, facilitando a reutilização e consulta dos dados.

5. **Scripts SQL**
   - Todos os scripts ajustados, incluindo as otimizações e as views criadas, foram armazenados em arquivos `.sql`.
   - Comentários foram adicionados aos scripts para melhor organização e entendimento.

## Estrutura dos Arquivos

- `consultas_otimizadas.sql`: Contém as consultas SQL ajustadas e otimizadas.
- `views.sql`: Contém as views criadas para as consultas otimizadas.
- `scripts.sql`: Contém os scripts com os ajustes e otimizações aplicados.

Certifique-se de revisar os scripts e os detalhes fornecidos para entender as mudanças e as melhorias realizadas.

