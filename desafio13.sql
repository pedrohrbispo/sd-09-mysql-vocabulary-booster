SELECT ProductName AS 'Produto', Price AS 'Preço' FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON od.ProductID = p.ProductID AND od.Quantity > 80
ORDER BY ProductName;
