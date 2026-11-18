/* Instrução 1 */
```SQL
USE vendas_informatica;

SELECT * FROM produto 
WHERE data_cadastro >= "2024-03-01"
AND data_cadastro <= "2024-04-01";
```

/* Instrução 2 */
```SQL
USE vendas_informatica;

SELECT nome_produto, marca, estoque, data_cadastro
FROM produto
WHERE data_cadastro >= "2024-01-01"
AND data_cadastro < "2024-04-01";
```

/* Instrução 3 */
```SQL
USE vendas_informatica;

SELECT *
FROM cliente
WHERE data_cadastro >= "2023-01-01"
AND data_cadastro < "2023-02-01";
```

/* Instrução 4 */
```SQL
USE vendas_informatica;

SELECT nome_cliente, email, cidade, estado, data_cadastro
FROM cliente
WHERE data_cadastro >= "2023-06-01"
AND data_cadastro < "2023-06-16";
```

/* Instrução 5 */
```SQL
USE vendas_informatica;

SELECT *
FROM venda
WHERE data_venda >= "2025-05-01"
AND data_venda < "2025-06-01";
```

/* Instrução 6 */
```SQL
USE vendas_informatica;

SELECT
    cliente.nome_cliente,
    venda.data_venda,
    venda.preco_unitario_venda,
    venda.forma_pagamento
FROM venda
INNER JOIN cliente
ON venda.id_cliente = cliente.id_cliente
WHERE venda.data_venda >= "2025-12-24"
AND venda.data_venda < "2026-01-16"
ORDER BY venda.preco_unitario_venda DESC;
```

/* Instrução 7 */
```SQL
USE vendas_informatica;

SELECT
    cliente.nome_cliente,
    cliente.email,
    produto.nome_produto AS nome_produto,
    produto.marca,
    produto.categoria,
    venda.forma_pagamento,
    venda.data_venda,
    venda.status_venda
FROM venda
INNER JOIN cliente
    ON venda.id_cliente = cliente.id_cliente
INNER JOIN produto
    ON venda.id_produto = produto.id_produto
WHERE venda.data_venda >= "2025-12-01"
  AND venda.data_venda < "2026-01-01"
  AND venda.status_venda IN ("Cancelada", "Concluída")
ORDER BY venda.data_venda DESC 
LIMIT 0, 25;
```