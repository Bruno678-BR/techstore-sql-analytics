# techstore-sql-analytics

# 📊 Analítica de Vendas e Tratamento de Dados — TechStore

Este projeto simula a rotina de um Analista de Dados / Suporte de TI atendendo a demandas de negócio de uma empresa de e-commerce. O objetivo foi transformar dados brutos em insights estratégicos e garantir a qualidade da informação utilizando **SQL (MySQL)**.

---

## 🛠️ Tecnologias e Conceitos Utilizados
* **SQL / MySQL Workbench**: Linguagem principal para consulta e manipulação.
* **Window Functions (`SUM() OVER`, `ROW_NUMBER() OVER`)**: Para análise de faturamento acumulado e ranqueamento de categorias.
* **Tratamento de Nulos (`COALESCE`, `COUNT`)**: Para auditoria e saneamento da base de dados.
* **Subqueries & CTEs (`WITH`)**: Para estruturação de consultas complexas.

---

## 🚀 Desafios e Soluções (Tickets de Negócio)

### 🔹 Ticket #001: Faturamento Acumulado por Cliente
* **Solicitante**: Gerente de Vendas
* **Problema**: Acompanhar a evolução de compras de clientes fiéis ao longo do tempo.
* **Solução**: Uso de `SUM() OVER(PARTITION BY cliente ORDER BY data_pedido)` para calcular o acumulado mantendo a granularidade linha a linha de vendas concluídas.

### 🔹 Ticket #002: Auditoria de Dados Nulos (`NULL`)
* **Solicitante**: Equipe de Qualidade de Dados
* **Problema**: Tratar registros pendentes na coluna de status e metrificar o volume de dados ausentes.
* **Solução**: Aplicação de `COALESCE(status_pedido, 'Em Análise')` para sanitização visual e diferenciação do comportamento entre `COUNT(*)` e `COUNT(coluna)`.

### 🔹 Ticket #003: Ranking de Consumo por Categoria
* **Solicitante**: Diretoria Comercial
* **Problema**: Identificar os maiores compradores em cada segmento para ações de fidelização.
* **Solução**: Criação de uma **CTE** para agrupar o gasto total por cliente/categoria e aplicação de `ROW_NUMBER()` particionado por categoria.

---

## 📌 Principais Aprendizados
1. **Granularidade importa**: Agrupar precocemente com `GROUP BY` pode esconder detalhes valiosos de vendas individuais.
2. **`NULL` não é zero**: Tratar ausência de informação exige entender a origem do dado antes de alterar valores.
3. **Comunicação de Resultados**: Escrever queries focando na resposta que a equipe de negócios precisa consumir.

---
*Projeto desenvolvido por Bruno Rosa.*
