SELECT p.city, COUNT(r.id) AS total_reservations
FROM properties p
JOIN reservations r ON r.property_id = p.id
GROUP BY p.city
ORDER BY total_reservations DESC;