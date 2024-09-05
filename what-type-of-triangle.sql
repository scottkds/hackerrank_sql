SELECT
CASE 
    WHEN A >= B + C OR B >= A + C OR C >= A + B THEN 'Not A Triangle'
    WHEN A = B AND B = C THEN 'Equilateral'
    WHEN A = B OR B = C OR A = C THEN 'Isosceles'
    ELSE 'Scalene'
END as type
FROM triangles
