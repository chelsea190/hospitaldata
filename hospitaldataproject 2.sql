select * from `data on hospital`;


DESCRIBE `data on hospital`;
SELECT AVG (medical_cost) AS avg_cost 
FROM `data on hospital`;


SELECT bmi, COUNT(*) AS count
FROM `data on hospital`
GROUP BY bmi
ORDER BY bmi;

SELECT bmi, medical_cost 
FROM `data on hospital`;

SELECT `smokes?`, AVG(medical_cost) AS avg_cost
FROM `data on hospital`
GROUP BY `smokes?`;

SELECT CASE
WHEN age BETWEEN 18 AND 30 THEN '18-30'
WHEN age BETWEEN 31 AND 40 THEN '31-40'
WHEN age BETWEEN 41 AND 50 THEN '41-50'
WHEN age BETWEEN 51 AND 60 THEN '51-60'
ELSE '61+'
END AS age_group,
AVG(medical_cost) AS avg_cost
FROM `data on hospital`
GROUP BY age_group;


SELECT region, SUM(medical_cost) AS total_cost
FROM `data on hospital`
GROUP BY region;


SELECT CASE
WHEN bmi < 180.5 THEN 'underwight'
WHEN bmi BETWEEN 186 AND 249 THEN 'normal weight'
WHEN bmi BETWEEN 250 AND 400  THEN 'slightly overweight'
ELSE 'overweight'
END AS bmi_category,
AVG(medical_cost) AS avg_cost
FROM `data on hospital`
GROUP BY bmi_category;

