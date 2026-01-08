CREATE DATABASE event_management;
USE event_management;

CREATE TABLE events (
  event_id INT AUTO_INCREMENT PRIMARY KEY,
  event_name VARCHAR(100),
  event_date DATE,
  location VARCHAR(100)
);

CREATE TABLE participants (
  participant_id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE registrations (
  registration_id INT AUTO_INCREMENT PRIMARY KEY,
  event_id INT,
  participant_id INT,
  registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (event_id) REFERENCES events(event_id),
  FOREIGN KEY (participant_id) REFERENCES participants(participant_id)
);
