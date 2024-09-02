SELECT DISTINCT
CITY
FROM station
WHERE substr(city, -1, 1) in ('a', 'e', 'i', 'o', 'u')
