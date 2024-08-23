SELECT count(city) - count(DISTINCT city) as duplicates
FROM station;
