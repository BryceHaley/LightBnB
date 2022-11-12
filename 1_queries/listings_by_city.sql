SELECT p.id, p.title, p.cost_per_night, AVG(pr.rating) AS average_rating
FROM properties p
JOIN property_reviews pr ON p.id = pr.property_id
WHERE p.city LIKE '%ancouv%'
GROUP BY p.id
HAVING AVG(pr.rating) >= 4
ORDER BY p.cost_per_night ASC
LIMIT 10;