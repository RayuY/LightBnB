-- SELECT reservation_id AS id,
-- title, 
-- cost_per_night, 
-- start_date, 
-- AVG(rating) AS average_rating

-- FROM property_reviews
-- JOIN properties ON properties.id = property_id
-- JOIN reservations ON reservations.id = reservation_id

-- WHERE reservations.guest_id = 1
-- GROUP BY reservation_id, title, cost_per_night, start_date
-- ORDER BY start_date ASC
-- LIMIT 10;



SELECT reservations.id, 
properties.title, 
properties.cost_per_night, 
reservations.start_date, 
avg(rating) as average_rating

FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id

WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;