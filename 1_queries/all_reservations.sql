SELECT r.id, p.title, p.cost_per_night, r.start_date, t.average_rating
FROM reservations r
JOIN properties p ON p.id = r.property_id
JOIN property_reviews pr on pr.reservation_id = pr.reservation_id
JOIN users u ON r.guest_id = u.id
JOIN (
  SELECT AVG(pr.rating) AS average_rating, pr.property_id AS pid 
  FROM property_reviews pr
  GROUP BY pr.property_id
) t ON t.pid = p.id
WHERE u.id = 1
GROUP BY r.id, p.title, p.cost_per_night, r.start_date, t.average_rating
ORDER BY r.start_date
LIMIT 10;
