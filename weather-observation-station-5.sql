-- This seems too complex

WITH min_len as (
    SELECT city, length(city) as n_chars
    FROM station
    WHERE length(city) = (select min(length(city)) from station)
    ORDER BY city
    LIMIT 1
),
max_len as (
    SELECT city, length(city) as n_chars
    FROM station
    WHERE length(city) = (select max(length(city)) from station)
    ORDER BY city
    LIMIT 1
)

SELECT * FROM min_len
UNION
SELECT * FROM max_len
