SELECT Country FROM w3schools.suppliers
UNION ALL
SELECT Country FROM w3schools.customers
ORDER BY Country;
