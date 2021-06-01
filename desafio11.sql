SELECT ContactName AS Nome,
Country AS País,
(SELECT COUNT(Country)
FROM w3schools.customers
WHERE Country = País AND ContactName <> Nome) AS `Número de compatriotas`
FROM w3schools.customers
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
