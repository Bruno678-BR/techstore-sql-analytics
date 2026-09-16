CREATE DATABASE IF NOT EXISTS techstore;


CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    cliente VARCHAR(50),
    categoria VARCHAR(30),
    data_pedido DATE,
    valor_total DECIMAL(10, 2),
    status_pedido VARCHAR(20)
);

INSERT INTO pedidos (id_pedido, cliente, categoria, data_pedido, valor_total, status_pedido) VALUES
(101, 'Ana Silva', 'Eletrônicos', '2026-02-01', 2500.00, 'Concluído'),
(102, 'Bruno Rosa', 'Informática', '2026-02-02', 1200.00, 'Concluído'),
(103, 'Ana Silva', 'Informática', '2026-02-05', 350.00, 'Concluído'),
(104, 'Carla Dias', 'Eletrônicos', '2026-02-06', 4500.00, 'Cancelado'),
(105, 'Bruno Rosa', 'Eletrônicos', '2026-02-10', 800.00, 'Concluído'),
(106, 'Diego Alves', 'Acessórios', '2026-02-12', 150.00, NULL),
(107, 'Ana Silva', 'Eletrônicos', '2026-02-15', 1800.00, 'Concluído'),
(108, 'Carla Dias', 'Informática', '2026-02-20', 2200.00, 'Concluído'),
(109, 'Diego Alves', 'Acessórios', '2026-02-22', 90.00, 'Concluído');


