DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS properties CASCADE;

CREATE TABLE properties (
  id SERIAL PRIMARY KEY NOT NULL,
  description VARCHAR(255),
  cost_per_night NUMERIC(10,2),
  parking_spaces INT,
  number_of_bathrooms INT,
  number_of_bedrooms INT,
  thumbnail_url VARCHAR(255),
  cover_photo_url VARCHAR(255),
  status BOOLEAN NOT NULL,
  country VARCHAR(255) NOT NULL,
  street VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  province VARCHAR(255) NOT NULL,
  post_code VARCHAR(255) NOT NULL,
  owner_id INT NOT NULL,

  CONSTRAINT fk_owners
    FOREIGN KEY(owner_id)
      REFERENCES users(id)
      ON DELETE CASCADE
);

DROP TABLE IF EXISTS reservations CASCADE;

CREATE TABLE reservations (
  id SERIAL PRIMARY KEY NOT NULL,
  start_date TIMESTAMP NOT NULL,
  end_date TIMESTAMP NOT NULL,
  guest_id INT NOT NULL,
  property_id INT NOT NULL,

  CONSTRAINT fk_guests
    FOREIGN KEY(guest_id) REFERENCES users(id)
    ON DELETE CASCADE,

  CONSTRAINT fk_properties
    FOREIGN KEY(property_id) REFERENCES properties(id)
    ON DELETE CASCADE
);

DROP TABLE IF EXISTS property_reviews CASCADE;

CREATE TABLE property_reviews (
  id SERIAL PRIMARY KEY NOT NULL,
  reservation_id INT NOT NULL,
  message VARCHAR(255),
  rating SMALLINT,

  CONSTRAINT fk_reservations
    FOREIGN KEY(reservation_id) REFERENCES reservations(id)
    ON DELETE CASCADE
);