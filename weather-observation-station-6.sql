SELECT DISTINCT
CITY
FROM station
WHERE substring(city, 1, 1) in ('a', 'e', 'i', 'o', 'u')
