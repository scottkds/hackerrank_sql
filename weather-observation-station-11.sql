SELECT DISTINCT
CITY
FROM station
WHERE substr(city, -1, 1) NOT IN ('a', 'e', 'i', 'o', 'u')
OR substr(city, 1, 1) NOT IN ('a', 'e', 'i', 'o', 'u')
