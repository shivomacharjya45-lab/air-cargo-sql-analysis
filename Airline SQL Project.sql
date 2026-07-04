CREATE DATABASE AirCargo;
USE AirCargo;
SELECT * FROM passengers_on_flights
WHERE route_id BETWEEN 1 AND 25;
SELECT 
    COUNT(*) AS no_of_passengers, 
    SUM(no_of_tickets * price_per_ticket) AS total_revenue
FROM ticket_details
WHERE class_id = 'Business';
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name
FROM customer;
SELECT DISTINCT 
    c.customer_id, 
    c.first_name, 
    c.last_name
FROM customer c
INNER JOIN ticket_details t ON c.customer_id = t.customer_id;
SELECT DISTINCT 
    c.first_name, 
    c.last_name
FROM customer c
JOIN ticket_details t ON c.customer_id = t.customer_id
WHERE t.brand = 'Emirates';
SELECT 
    customer_id, 
    first_name, 
    last_name
FROM customer
WHERE customer_id IN (
    SELECT DISTINCT customer_id
    FROM passengers_on_flights
    WHERE class_id = 'Economy Plus'
);
SELECT 
    customer_id,
    SUM(no_of_tickets * price_per_ticket) AS total_revenue,
    IF(SUM(no_of_tickets * price_per_ticket) > 10000, 'Crossed 10000', 'Not Crossed') AS revenue_status
FROM ticket_details
GROUP BY customer_id;
CREATE USER 'cargo_admin'@'localhost' IDENTIFIED BY 'secure_password_123';
GRANT ALL PRIVILEGES ON AirCargo.* TO 'cargo_admin'@'localhost';
FLUSH PRIVILEGES;
SELECT DISTINCT 
    class_id,
    MAX(price_per_ticket) OVER (PARTITION BY class_id) AS max_ticket_price
FROM ticket_details;
-- Create Index to optimize retrieval speeds
CREATE INDEX idx_route ON passengers_on_flights(route_id);

-- Extract Route 4 passengers
SELECT * FROM passengers_on_flights
WHERE route_id = 4;
EXPLAIN SELECT * FROM passengers_on_flights
WHERE route_id = 4;
SELECT 
    customer_id, 
    aircraft_id, 
    SUM(no_of_tickets * price_per_ticket) AS total_spent
FROM ticket_details
GROUP BY customer_id, aircraft_id WITH ROLLUP;
CREATE VIEW business_class_customers AS
SELECT DISTINCT 
    c.customer_id, 
    c.first_name, 
    c.last_name, 
    t.brand
FROM customer c
JOIN ticket_details t ON c.customer_id = t.customer_id
WHERE t.class_id = 'Business';
DELIMITER //
CREATE PROCEDURE GetLongDistanceRoutes()
BEGIN
    SELECT * FROM routes
    WHERE Distance_miles > 2000;
END //
DELIMITER ;

-- Command to test/run the procedure:
-- CALL GetLongDistanceRoutes();
SELECT 
    customer_id,
    SUM(no_of_tickets) AS total_tickets_purchased,
    SUM(no_of_tickets * price_per_ticket) AS total_price_paid
FROM ticket_details
GROUP BY customer_id;
SELECT 
    p.route_id,
    AVG(r.Distance_miles) AS avg_distance,
    COUNT(p.customer_id) / COUNT(DISTINCT p.aircraft_id) AS avg_passengers_per_aircraft
FROM passengers_on_flights p
JOIN routes r ON p.route_id = r.Route_id
GROUP BY p.route_id
HAVING COUNT(DISTINCT p.travel_date) > 1;