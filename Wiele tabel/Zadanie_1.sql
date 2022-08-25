/*
Wprowadzenie
a. Napisz kwerendę, która zwróci wszystkich klientów z zamówieniami zrealizowanymi w dniu 2008-01-08
b. Napisz kwerendę, która zwróci listę agentów oraz klientów wraz z ich obszarem działalności, którzy należą do tego samego obszaru 
 */
 
 -- a)
 SELECT 
    *
FROM
    customer
        CROSS JOIN
    orders ON customer.cust_code = orders.cust_code
WHERE
    ord_date = '2008-01-08';
 
SELECT 
    *
FROM
    customer a,
    orders b
WHERE
    a.CUST_CODE = b.CUST_CODE
        AND b.ORD_DATE = '2008-01-08';
        
-- b)
SELECT 
    agents.agent_name, customer.cust_name, customer.working_area
FROM
    customer,
    agents
WHERE
    customer.working_area = agents.working_area;

/* a. Wyszukaj listę klientów, którzy podjęli współpracę z agentami spoza swojego obszaru działalności oraz tymi, których prowizja jest powyżej 12%; kolumna z nazwą pośrednika powinna mieć nazwę „Salesman”
b. Wyszukaj szczegóły dot. Zamówień: nr zamówienia, datę, kwotę, klienta (nazwa kolumny powinna być „Customer Name”) oraz agenta (w tym wypadku nazwa kolumny to „Salesman”), który pracuje dla tego klienta oraz jego prowizję od zamówienia
 */
 
 -- a)
SELECT 
    customer.cust_name,
    customer.working_area,
    agents.agent_name AS 'Salesman',
    agents.commission
FROM
    customer
        INNER JOIN
    agents ON customer.agent_code = agents.agent_code
WHERE
    customer.working_area <> agents.working_area
        AND commission > 0.12;
 
 -- b)
SELECT 
    orders.ord_num,
    orders.ord_date,
    orders.ord_amount,
    customer.cust_name AS 'Customer Name',
    agents.agent_name AS 'Salesman',
    agents.commission
FROM
    orders
        INNER JOIN
    customer ON orders.cust_code = customer.cust_code
        INNER JOIN
    agents ON orders.agent_code = agents.agent_code;
 
SELECT 
    a.ORD_NUM,
    a.ORD_DATE,
    a.ORD_AMOUNT,
    b.cust_name AS 'Customer Name',
    c.AGENT_NAME AS 'Salesman',
    c.commission
FROM
    orders a
        INNER JOIN
    customer b ON a.CUST_CODE = b.CUST_CODE
        INNER JOIN
    agents c ON a.AGENT_CODE = c.AGENT_CODE;
 
 /*
LEFT JOIN
a. Wyszukaj listę - posortowaną rosnąco wg kodu klienta (jego id) – klientów pracujących zarówno indywidualnie, jak również za pośrednictwem pośredników (nazwij kolumnę zawierającą nazwy pośredników jako „Salesman”), wyszukaj również ich obszar działalności
 */
 
-- a)
SELECT 
    customer.cust_code,
    agents.agent_name AS 'Salesman',
    customer.working_area
FROM
    customer
        LEFT JOIN
    agents ON customer.agent_code = agents.agent_code
ORDER BY customer.cust_code;

 /*
RIGHT JOIN
a. Wyszukaj listę pośredników pracujących dla jednego bądź więcej klientów lub takich, którzy jeszcze nie podjęli współpracy z żadnym klientem, posortuj listę rosnąco wg kolumny kodu pośrednika (agenta); nazwij kolumnę zawierającą nazwy pośredników jako „Salesman”, wyszukaj również ich obszar działalności
 */
 
SELECT customer.cust_name, agents.agent_name AS 'Salesman', agents.working_area
FROM customer
RIGHT JOIN agents ON customer.agent_code = agents.agent_code
ORDER BY agents.agent_code;

 /*
CROSS JOIN
a. Wyszukaj iloczyn kartezjański pośredników oraz klientów, w taki sposób, że każdy pośrednik będzie widoczny dla wszystkich klientów i vice versa. 
b. Wyszukaj iloczyn kartezjański pośredników oraz klientów, w taki sposób, że każdy pośrednik będzie widoczny dla wszystkich klientów i vice versa, ale tylko jeżeli pośrednik jest z tego samego obszaru co klient. 
c. Wyszukaj iloczyn kartezjański pośredników oraz klientów, w taki sposób, że każdy pośrednik będzie widoczny dla wszystkich klientów i vice versa, ale tylko jeżeli pośrednik jest z innego obszaru niż klient, a klient posiada swoją własną ocenę (‘grade’)
 */
 
-- a)
SELECT * 
FROM agents
CROSS JOIN customer;

-- b)
SELECT * 
FROM agents
CROSS JOIN customer
WHERE agents.working_area = customer.working_area;

-- c)
SELECT * 
FROM agents
CROSS JOIN customer
WHERE agents.working_area <> customer.working_area
AND customer.grade IS NOT NULL;

 /*
UNION
a. Wyszukaj wszystkich pośredników (ich kod – nazwij kolumne „ID” oraz nazwa agenta); przypisz im wartość ‘Salesman’ w kolumnie o nazwie „Rodzaj”) oraz klientów – ich ID i nazwa (wartość ‘Customer’ w kolumnie „Rodzaj”) zlokalizowanych w Londynie
b. Napisz kwerendę, która zwróci raport pokazujący, który pośrednik przyjął największe i najmniejsze zamówienia na każdy dzień
 */

-- a)
SELECT agent_code AS 'ID', agent_name, 'Salesman' AS 'Rodzaj'
FROM agents
WHERE working_area = 'London'
UNION
SELECT cust_code AS 'ID', cust_name, 'Customer' AS 'Rodzaj'
FROM customer
WHERE working_area = 'London';

-- b)
SELECT agents.agent_code, agent_name, ord_num, 'najwyższa', ord_date
FROM agents, orders
WHERE agents.agent_code = orders.agent_code
AND orders.ord_amount=
(SELECT MAX(ord_amount)
FROM orders c
WHERE orders.ord_date = c.ord_date)
UNION
(SELECT agents.agent_code, agent_name, ord_num, 'najniższa', ord_date
FROM agents, orders
WHERE agents.agent_code = orders.agent_code
AND orders.ord_amount=
(SELECT MIN(ord_amount)
FROM orders c
WHERE orders.ord_date = c.ord_date));

 /*
WITH
a. Wyszukaj pośrednika w Londynie z prowizją powyżej 14% - nazwij widok „londonstaff”
b. Utwórz widok „gradecount”, aby uzyskać liczbę klientów dla każdej oceny (‘grade’)
c. Utwórz widok (o nazwie „total_per_dzien”) do śledzenia liczby klientów, średniej kwoty zamówień oraz ogólnej sumy zamówień na każdy dzień
*/

-- a)
WITH londonstaff AS (
SELECT *
FROM agents
WHERE working_area = 'London')
SELECT * 
FROM londonstaff
WHERE commission > 0.14;

-- b)

-- c)
