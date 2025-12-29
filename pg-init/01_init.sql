CREATE TABLE IF NOT EXISTS employees(
  id SERIAL PRIMARY KEY,
  email TEXT NOT NULL
);
INSERT INTO employees(email) VALUES
  ('dev1@example.com'),
  ('dev2@example.com')
ON CONFLICT DO NOTHING;
CREATE TABLE IF NOT EXISTS movies(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  year TEXT NOT NULL,
  rating TEXT NOT NULL
);
INSERT INTO movies(name, year, rating) VALUES
    ('The Dark Knight', '2008', 'perfect'),
    ('Deadpool', '2016', 'oh yeah'),
    ('Thunderbolts', '2025', 'meh'),
    ('Flash Gordon', '1980', 'fun')
ON CONFLICT DO NOTHING;
