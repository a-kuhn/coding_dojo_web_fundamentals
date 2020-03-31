-- 1. What query would you run to get the total revenue for March of 2012?
SELECT *
FROM billing b
WHERE b.charged_datetime>='2012-03-01' AND b.charged_datetime<'2012-04-01';

-- 2. What query would you run to get total revenue collected from the client with an id of 2?
SELECT SUM(amount)
FROM billing
WHERE client_id = '2';

-- 3. What query would you run to get all the sites that client=10 owns?
SELECT domain_name
FROM sites
WHERE client_id=10;

-- 4. What query would you run to get total # of sites created per month per year for the client with an id of 1? What about for client=20?
SELECT client_id, COUNT(site_id), mo, yr
FROM	(SELECT client_id, site_id, MONTH(created_datetime) AS mo, YEAR(created_datetime) AS yr
		FROM sites
		WHERE client_id = 1 OR client_id=20) as c
GROUP BY yr, mo;

-- 5. What query would you run to get the total # of leads generated for each of the sites between January 1, 2011 to February 15, 2011?
SELECT first_name, COUNT(leads_id), site_id, registered_datetime
FROM (SELECT first_name, leads_id, site_id, registered_datetime
		FROM leads
		WHERE registered_datetime >= '2011-01-01' AND registered_datetime < '2011-02-16') AS l
GROUP BY site_id;

-- 6. What query would you run to get a list of client names and the total # of leads we've generated for each of our clients between January 1, 2011 to December 31, 2011?
SELECT CONCAT(c.first_name, ' ', c.last_name) AS client_name, COUNT(l.leads_id) AS num_of_leads
FROM clients c
JOIN sites ON c.client_id = sites.client_id
JOIN leads l ON sites.site_id = l.site_id
WHERE l.registered_datetime >= '2011-01-01' AND l.registered_datetime < '2012-01-01'
GROUP BY client_name;

-- 7. What query would you run to get a list of client names and the total # of leads we've generated for each client each month between months 1 - 6 of Year 2011?
SELECT CONCAT(c.first_name, ' ', c.last_name) AS client_name, COUNT(l.leads_id) AS num_of_leads, l.registered_datetime
FROM clients c 
JOIN sites ON c.client_id = sites.client_id
JOIN leads l ON sites.site_id = l.site_id
WHERE YEAR(l.registered_datetime) = 2011 AND MONTH(l.registered_datetime)>=1 AND MONTH(l.registered_datetime)<7
GROUP BY client_name;

-- NOT QUITE THERE YET -- 

-- 8. What query would you run to get a list of client names and the total # of leads we've generated for each of our clients' sites between January 1, 2011 to December 31, 2011? Order this query by client id.  Come up with a second query that shows all the clients, the site name(s), and the total number of leads generated from each site for all time.
SELECT CONCAT(c.first_name, ' ', c.last_name) AS client_name, s.domain_name AS website, COUNT(l.leads_id) AS leads_count, l.registered_datetime AS generation_date
FROM clients c
JOIN sites s ON c.client_id = s.client_id
JOIN leads l ON s.site_id = l.site_id
WHERE l.registered_datetime >= 2011-01-01 AND l.registered_datetime < 2012-01-01
GROUP BY s.site_id
ORDER BY c.client_id;
-- NOT QUITE THERE YET -- 

-- 9. Write a single query that retrieves total revenue collected from each client for each month of the year. Order it by client id.
SELECT CONCAT(c.first_name, ' ', c.last_name) AS client_name, SUM(b.amount), MONTHNAME(b.charged_datetime) AS month, YEAR(b.charged_datetime) AS year
FROM clients c 
JOIN billing b ON c.client_id = b.client_id
GROUP BY  year, month
ORDER BY c.client_id;
-- NOT QUITE THERE YET -- 

-- 10. Write a single query that retrieves all the sites that each client owns. Group the results so that each row shows a new client. It will become clearer when you add a new field called 'sites' that has all the sites that the client owns. (HINT: use GROUP_CONCAT)
SELECT CONCAT(c.first_name, ' ', c.last_name) AS client_name, GROUP_CONCAT(s.domain_name SEPARATOR ', ') AS sites
FROM clients c
JOIN sites s ON c.client_id = s.client_id
GROUP BY client_name
ORDER BY c.client_id;
