SELECT 
    cliente,
    data_pedido,
    valor_total,
    SUM(valor_total) OVER (
        PARTITION BY cliente 
        ORDER BY data_pedido ASC
    ) AS faturamento_acumulado
FROM pedidos
WHERE status_pedido = 'Concluído';


SELECT 
    id_pedido,
    cliente,
    categoria,
    COALESCE(status_pedido, 'Em Análise') AS status_tratado,
    COUNT(*) OVER() AS total_pedidos,
    COUNT(status_pedido) OVER() AS pedidos_com_status
FROM pedidos;

WITH agrupamento AS (
    SELECT 
        cliente, 
        categoria, 
        SUM(valor_total) AS gasto_total
    FROM pedidos
    WHERE status_pedido = 'Concluído'
    GROUP BY cliente, categoria
)
SELECT 
    cliente, 
    categoria, 
    gasto_total, 
    ROW_NUMBER() OVER (
        PARTITION BY categoria 
        ORDER BY gasto_total DESC
    ) AS rank_categoria
FROM agrupamento;