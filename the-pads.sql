-- This one is wonky because it only worked because no one has a name that starts
-- with a letter >= T, but subqueries and CTE query results are not guaranteed to be
-- returned in order (even if sorted in the subquery or CTE) thus the ORDER BY clause
-- has to be applied to the whole UNION.
WITH name_o as     
    (SELECT
    CONCAT(name, '(', LEFT(occupation, 1), ')') as name_o
    FROM occupations
    ORDER BY 1
    )

SELECT name_o FROM name_o
UNION
SELECT
CONCAT('There are a total of ', count(occupation), ' ', lower(occupation), 's.')
FROM occupations
GROUP BY occupation
