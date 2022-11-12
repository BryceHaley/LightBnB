INSERT INTO users(email, password, name)
VALUES
('a@google.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.','user a'),
('b@google.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.','user b'),
('c@google.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.','user c');

SELECT 'insert users done!' as msg;

INSERT INTO properties(
  title,
  description, 
  cost_per_night,
  parking_spaces,
  number_of_bathrooms,
  number_of_bedrooms,
  thumbnail_photo_url,
  cover_photo_url,
  active,
  country,
  street,
  city,
  province,
  post_code,
  owner_id)
VALUES
('house1', 'lorem ipsum', 10.25, 0, 3, 15,
'https://github.com/BryceHaley/LightBnB/blob/main/images/t1.jpeg?raw=true',
'https://github.com/BryceHaley/LightBnB/blob/main/images/c1.jpeg?raw=true',
TRUE, 'Canada', '1st street', 'Ottawa', 'ON','1a1a1a', 1),
('house2', 'dolor sit amet', 425.00, 2, 1, 2,
'https://github.com/BryceHaley/LightBnB/blob/main/images/t2.png?raw=true',
'https://github.com/BryceHaley/LightBnB/blob/main/images/c2.jpeg?raw=true',
TRUE, 'Canada', '2nd street', 'Vancouver', 'BC','2b2b2b', 1),
('house3','consectetur adipiscing elit', 74.99, 6, 2, 2,
'https://github.com/BryceHaley/LightBnB/blob/main/images/t3.png?raw=true',
'https://github.com/BryceHaley/LightBnB/blob/main/images/c3.jpeg?raw=true',
FALSE, 'Canada', '3rd street', 'Truro', 'NS','3c3c3c', 1);

SELECT 'insert properties done!' as msg;

INSERT INTO reservations (start_date, end_date, guest_id, property_id)
VALUES
('2022-01-01', '2022-01-15', 2, 1),
('2022-02-01', '2022-01-2', 2, 2),
('2022-03-01', '2022-01-22', 3, 1);

SELECT 'insert reservations done!' as msg;

INSERT INTO property_reviews (reservation_id, message, rating)
VALUES
(1, 'it was good', 5),
(2, 'it was not good', 1),
(3, 'it was okay', 3);

SELECT 'insert reviews done!' as msg;

