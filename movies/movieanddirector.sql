CREATE TABLE doctors (
  doctor_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  specialization VARCHAR(100),
  experience INT,
  contact VARCHAR(50)
);


CREATE TABLE patients (
  patient_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  age INT,
  disease VARCHAR(100),
  doctor_id INT,
  FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);


INSERT INTO doctors (name, specialization, experience, contact) VALUES
('Dr. Ajay Chiruguri', 'Gastroenterologist', 12, '9876543210'),
('Dr. Meera Sharma', 'Cardiologist', 15, '9123456780'),
('Dr. Kiran Reddy', 'Neurologist', 10, '9988776655');


INSERT INTO patients (name, age, disease, doctor_id) VALUES
('Ramesh Kumar', 45, 'Liver Cirrhosis', 1),
('Sneha Patel', 52, 'Heart Disease', 2),
('Anil Verma', 37, 'Migraine', 3),
('Pooja Rani', 29, 'Gastritis', 1);


SELECT * FROM doctors;


SELECT * FROM patients;


