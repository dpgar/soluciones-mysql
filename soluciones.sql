--Ordenar de forma desc todos los empleados con mayor antigüedad.

SELECT
    *
FROM employees
ORDER BY hire_at DESC

--Mostrar en consola el nombre completo de todos los usuario que no están activos.

SELECT
    id,
    first_name,
    hire_at
FROM employees
WHERE status = 'inactivo';

--Mostrar en consola la suma total del salario de todo los empleados

SELECT SUM(salary) AS total FROM employees;


--Mostrar en consola el nombre del top 5 empleados mejor pagados

SELECT
    *
FROM employees
ORDER BY salary DESC
LIMIT 5;


--Agrupar por fecha de contratación

SELECT
    hire_at,
    COUNT(*) as total
FROM employees
GROUP BY hire_at;

-- SELECT 
--     YEAR(hire_at) AS anio, 
--     MONTH(hire_at) AS mes, 
--     DAY(hire_at) AS dia, 
--     AS total
-- FROM employees
-- GROUP BY YEAR(hire_at), MONTH(hire_at), DAY(hire_at);

-- SELECT 
--     YEAR(hire_at) AS anio, 
-- AS total
-- FROM employees
-- GROUP BY YEAR(hire_at);



--Mostrar los meses con mayor contratación

SELECT
    MONTH(hire_at) AS mes FROM employees
    GROUP BY hire_at;

-- SELECT 
--     YEAR(hire_at) AS anio, 
--     MONTH(hire_at) AS mes, 
--     DAY(hire_at) AS dia 
-- FROM employees
-- GROUP BY MONTH(hire_at)
-- ;


-- SELECT
--     id,
--     first_name,
--     hire_at
-- FROM employees
-- ORDER BY hire_at DESC;

-- SELECT
-- 	MONTH(hire_at) AS mes FROM employees,
--     ORDER BY hire_at DESC
-- GROUP BY hire_at;