CREATE DATABASE shelter_db_2;

USE shelter_db_2;

DROP TABLE IF EXISTS pet
CREATE TABLE pet(
    pet_id INT PRIMARY KEY IDENTITY(1,1),
	species VARCHAR(50) NOT NULL, 
    breed VARCHAR(50) NOT NULL,
    age_months INT NOT NULL,
    size VARCHAR(50) NOT NULL,
    pet_weight NUMERIC (7,2) NOT NULL,
    vaccine_stat BIT NOT NULL,
    health_condition BIT NOT NULL,
    time_in_shelter INT NOT NULL,
    previous_owner BIT NOT NULL,
    adoption_likelihood BIT NOT NULL,
    date_recieved DATE NOT NULL
)

INSERT INTO pet (species, breed, age_months, size, pet_weight, vaccine_stat, health_condition, 
                time_in_shelter, previous_owner, adoption_likelihood, date_recieved)
VALUES
    ('Bird', 'Parakeet', 28, 'Small', 13.039514605662, 1, 0, 4, 1, 0, '2022-01-31'),
    ('Bird', 'Parakeet', 148, 'Large', 26.584817349602183, 1, 0, 22, 0, 0, '2022-12-30'),
    ('Bird', 'Parakeet', 109, 'Large', 4.73009775273657, 0, 0, 31, 0, 0, '2021-05-10'),
    ('Bird', 'Parakeet', 91, 'Large', 19.03616527894457, 1, 0, 40, 1, 0, '2022-07-18'),
    ('Bird', 'Parakeet', 11, 'Small', 9.832685622368484, 0, 0, 15, 0, 0, '2022-02-04'),
    ('Bird', 'Parakeet', 27, 'Large', 29.948451067662468, 0, 0, 28, 1, 0, '2021-12-31'),
    ('Bird', 'Parakeet', 142, 'Medium', 23.571837642959203, 1, 0, 15, 1, 1, '2023-09-21'),
    ('Bird', 'Parakeet', 48, 'Small', 27.87330106271923, 1, 0, 7, 0, 0, '2021-11-10'),
    ('Bird', 'Parakeet', 124, 'Large', 9.520039648975498, 0, 0, 50, 1, 0, '2023-06-27'),
    ('Bird', 'Parakeet', 147, 'Medium', 23.04903788202829, 1, 0, 31, 0, 1, '2019-05-02'),
    ('Bird', 'Parakeet', 116, 'Small', 24.72622185270624, 1, 0, 15, 1, 0, '2020-04-11'),
    ('Bird', 'Parakeet', 87, 'Large', 11.999218360098793, 1, 0, 46, 1, 0, '2022-05-23'),
    ('Bird', 'Parakeet', 169, 'Large', 19.945396686139517, 1, 0, 65, 1, 1, '2019-11-27'),
    ('Bird', 'Parakeet', 105, 'Medium', 25.157180240831497, 1, 0, 77, 1, 1, '2023-01-22'),
    ('Bird', 'Parakeet', 169, 'Large', 1.521655815599242, 1, 0, 29, 0, 0, '2019-03-29'),
    ('Bird', 'Parakeet', 155, 'Large', 13.871823743076511, 1, 0, 87, 1, 0, '2022-10-28'),
    ('Bird', 'Parakeet', 114, 'Medium', 13.897921047858365, 1, 0, 51, 1, 1, '2022-01-28'),
    ('Bird', 'Parakeet', 95, 'Medium', 6.348620526943684, 1, 0, 82, 0, 1, '2021-05-21'),
    ('Bird', 'Parakeet', 28, 'Small', 14.235989751660306, 1, 0, 7, 0, 0, '2023-08-15'),
    ('Bird', 'Parakeet', 154, 'Medium', 19.286217796026413, 0, 1, 84, 0, 0, '2019-05-11'),
    ('Bird', 'Parakeet', 139, 'Medium', 25.645435533313695, 1, 0, 28, 0, 1, '2023-08-13'),
    ('Bird', 'Parakeet', 174, 'Small', 25.41752231368856, 1, 0, 8, 0, 0, '2022-08-25'),
    ('Bird', 'Parakeet', 86, 'Large', 3.224978584224661, 0, 1, 60, 0, 0, '2021-02-08'),
    ('Bird', 'Parakeet', 20, 'Medium', 29.228434451645256, 1, 0, 73, 0, 1, '2019-12-10'),
    ('Cat', 'Persian', 85, 'Medium', 11.411022274298649, 1, 0, 2, 0, 1, '2023-02-24'),
    ('Cat', 'Siamese', 153, 'Large', 14.564711585865243, 1, 0, 88, 0, 0, '2022-12-08'),
    ('Cat', 'Siamese', 65, 'Large', 20.40632591377515, 1, 0, 44, 1, 1, '2021-03-16'),
    ('Cat', 'Siamese', 112, 'Medium', 2.079429432510546, 1, 1, 87, 1, 0, '2020-01-21'),
    ('Cat', 'Persian', 179, 'Small', 9.001920640551825, 1, 0, 48, 0, 0, '2022-04-30'),
    ('Cat', 'Siamese', 140, 'Medium', 23.477372209834456, 1, 0, 8, 0, 1, '2021-08-13'),
    ('Cat', 'Siamese', 141, 'Medium', 12.923319037864022, 0, 1, 45, 1, 1, '2019-10-04'),
    ('Cat', 'Persian', 70, 'Small', 2.0430069301889717, 1, 1, 5, 0, 0, '2022-03-30'),
    ('Cat', 'Siamese', 23, 'Large', 14.954456392777972, 1, 0, 62, 0, 0, '2020-04-04'),
    ('Cat', 'Siamese', 43, 'Large', 29.095676803017923, 1, 0, 44, 0, 0, '2022-08-30'),
    ('Cat', 'Siamese', 63, 'Small', 2.737829504311362, 0, 0, 82, 0, 0, '2019-01-22'),
    ('Cat', 'Persian', 121, 'Large', 3.429938203899587, 1, 1, 18, 0, 0, '2019-09-10'),
    ('Cat', 'Persian', 17, 'Medium', 29.54881665391768, 0, 0, 77, 0, 1, '2021-01-17'),
    ('Cat', 'Siamese', 11, 'Large', 3.9723935464871714, 1, 1, 7, 1, 0, '2021-05-06'),
    ('Cat', 'Siamese', 179, 'Medium', 23.60703319506259, 0, 1, 10, 0, 0, '2023-05-04'),
    ('Cat', 'Persian', 152, 'Small', 7.512224608797995, 1, 0, 43, 0, 0, '2020-04-19'),
    ('Cat', 'Siamese', 30, 'Medium', 20.30987522027204, 1, 0, 74, 0, 1, '2021-12-18'),
    ('Cat', 'Siamese', 49, 'Medium', 29.17397434732004, 1, 0, 50, 0, 1, '2020-05-25'),
    ('Cat', 'Persian', 15, 'Medium', 14.49095756052846, 0, 0, 21, 0, 1, '2023-09-02'),
    ('Cat', 'Siamese', 99, 'Large', 12.169716205403676, 1, 1, 8, 0, 0, '2023-02-08'),
    ('Cat', 'Persian', 166, 'Small', 27.59187227997217, 1, 0, 35, 0, 0, '2020-11-30'),
    ('Cat', 'Siamese', 57, 'Large', 8.47651534667679, 1, 0, 1, 0, 0, '2021-09-02'),
    ('Cat', 'Siamese', 125, 'Medium', 7.889240422465326, 1, 0, 39, 0, 1, '2023-12-12'),
    ('Cat', 'Persian', 89, 'Large', 29.76489286226961, 1, 0, 51, 0, 1, '2019-07-09'),
    ('Cat', 'Siamese', 3, 'Small', 4.031308748395133, 1, 0, 86, 1, 1, '2021-08-15'),
    ('Dog', 'Labrador', 93, 'Large', 17.15319738308073, 1, 1, 3, 1, 0, '2020-11-17'),
    ('Dog', 'Poodle', 90, 'Small', 4.19499148735536, 1, 1, 37, 1, 0, '2021-08-15'),
    ('Dog', 'Golden Retriever', 31, 'Medium', 24.757792150970182, 1, 0, 1, 0, 1, '2020-07-16'),
    ('Dog', 'Poodle', 42, 'Medium', 3.624393021780136, 1, 0, 29, 0, 1, '2023-05-10'),
    ('Dog', 'Poodle', 89, 'Large', 13.82772828345625, 1, 0, 78, 0, 0, '2022-06-21'),
    ('Dog', 'Poodle', 109, 'Medium', 10.479904628612587, 1, 1, 45, 0, 0, '2021-04-11'),
    ('Dog', 'Labrador', 12, 'Large', 20.96159210764763, 1, 0, 59, 0, 0, '2023-03-09'),
    ('Dog', 'Labrador', 109, 'Small', 14.325565730539209, 1, 0, 85, 0, 1, '2022-02-28'),
    ('Dog', 'Poodle', 143, 'Medium', 20.87084215932612, 0, 0, 54, 1, 0, '2023-02-17'),
    ('Dog', 'Poodle', 135, 'Large', 22.37935748356784, 1, 0, 88, 0, 0, '2020-10-08'),
    ('Dog', 'Poodle', 12, 'Large', 17.962995925382927, 1, 1, 1, 1, 0, '2019-01-21'),
    ('Dog', 'Poodle', 112, 'Small', 24.52153013980749, 0, 0, 18, 1, 0, '2021-04-20'),
    ('Dog', 'Poodle', 119, 'Medium', 18.43164385449278, 1, 0, 67, 1, 1, '2019-06-16'),
    ('Dog', 'Poodle', 75, 'Medium', 7.17393338513981, 1, 0, 75, 0, 1, '2022-07-21'),
    ('Dog', 'Labrador', 156, 'Small', 6.898977063751136, 1, 0, 55, 0, 1, '2020-01-23'),
    ('Dog', 'Golden Retriever', 82, 'Medium', 7.392698661885805, 1, 0, 74, 0, 1, '2020-08-23'),
    ('Dog', 'Golden Retriever', 172, 'Large', 5.28772069800913, 1, 0, 4, 1, 0, '2019-11-12'),
    ('Dog', 'Golden Retriever', 49, 'Large', 18.628021898348432, 0, 0, 47, 1, 0, '2019-01-14'),
    ('Dog', 'Golden Retriever', 79, 'Small', 15.553367034113514, 1, 0, 80, 0, 0, '2019-08-30'),
    ('Dog', 'Labrador', 39, 'Small', 5.211525577542223, 1, 0, 9, 0, 1, '2021-02-15'),
    ('Dog', 'Poodle', 30, 'Small', 6.72601569564282, 0, 0, 41, 0, 0, '2022-10-01'),
    ('Dog', 'Golden Retriever', 153, 'Medium', 22.72557687211942, 1, 1, 81, 0, 0, '2020-07-18'),
    ('Dog', 'Golden Retriever', 100, 'Large', 14.34185938567929, 1, 0, 17, 0, 0, '2021-06-16'),
    ('Dog', 'Labrador', 40, 'Medium', 8.714619925135251, 1, 0, 53, 0, 1, '2022-09-25'),
    ('Dog', 'Poodle', 146, 'Small', 14.71194312199277, 0, 1, 64, 0, 1, '2019-04-02'),
    ('Dog', 'Golden Retriever', 173, 'Medium', 13.660869930512908, 1, 0, 59, 1, 1, '2022-10-22'),
    ('Rabbit', 'Rabbit', 47, 'Large', 20.19447325329605, 1, 1, 41, 1, 0, '2021-08-13'),
    ('Rabbit', 'Rabbit', 17, 'Small', 29.19030072876216, 1, 1, 56, 1, 0, '2023-01-18'),
    ('Rabbit', 'Rabbit', 71, 'Small', 28.89408135609196, 1, 0, 64, 0, 0, '2022-12-22'),
    ('Rabbit', 'Rabbit', 23, 'Small', 22.00720432394329, 0, 0, 19, 1, 0, '2020-05-23'),
    ('Rabbit', 'Rabbit', 178, 'Large', 5.744644204467654, 1, 0, 36, 0, 0, '2021-02-14'),
    ('Rabbit', 'Rabbit', 100, 'Small', 17.81435500983709, 1, 1, 27, 0, 0, '2019-02-04'),
    ('Rabbit', 'Rabbit', 87, 'Medium', 26.56089963737425, 1, 0, 12, 1, 1, '2019-07-25'),
    ('Rabbit', 'Rabbit', 164, 'Large', 15.724812404017266, 1, 0, 28, 0, 0, '2022-01-09'),
    ('Rabbit', 'Rabbit', 99, 'Small', 26.16160682688648, 1, 0, 56, 1, 0, '2023-05-05'),
    ('Rabbit', 'Rabbit', 150, 'Large', 4.64188097859466, 1, 0, 40, 0, 0, '2022-11-12'),
    ('Rabbit', 'Rabbit', 23, 'Large', 24.932211332913244, 1, 0, 1, 0, 1, '2021-10-22'),
    ('Rabbit', 'Rabbit', 47, 'Medium', 18.056167495158345, 0, 0, 28, 0, 0, '2021-10-18'),
    ('Rabbit', 'Rabbit', 68, 'Small', 11.692384796114878, 1, 0, 88, 0, 0, '2022-11-14'),
    ('Rabbit', 'Rabbit', 82, 'Large', 13.582753406078904, 1, 1, 6, 1, 0, '2020-07-19'),
    ('Rabbit', 'Rabbit', 22, 'Large', 23.110891136233903, 1, 0, 25, 0, 1, '2022-02-03'),
    ('Rabbit', 'Rabbit', 160, 'Small', 24.42443950282072, 0, 0, 53, 0, 0, '2023-12-01'),
    ('Rabbit', 'Rabbit', 24, 'Large', 14.162189979882148, 0, 0, 56, 0, 0, '2023-02-09'),
    ('Rabbit', 'Rabbit', 14, 'Medium', 15.427976379358572, 0, 0, 7, 0, 1, '2020-12-03'),
    ('Rabbit', 'Rabbit', 3, 'Medium', 14.02341838760729, 0, 0, 65, 1, 1, '2020-02-06'),
    ('Rabbit', 'Rabbit', 33, 'Medium', 19.37045945783741, 1, 1, 76, 0, 0, '2020-12-30'),
    ('Rabbit', 'Rabbit', 155, 'Small', 12.814086094455073, 1, 1, 73, 0, 0, '2023-04-29'),
    ('Rabbit', 'Rabbit', 162, 'Large', 15.487427437902053, 0, 0, 15, 0, 0, '2019-06-11'),
    ('Rabbit', 'Rabbit', 72, 'Medium', 26.517957345512837, 0, 0, 69, 1, 1, '2019-07-21'),
    ('Rabbit', 'Rabbit', 179, 'Large', 1.1148383473521395, 0, 0, 38, 1, 0, '2021-09-22'),
    ('Rabbit', 'Rabbit', 116, 'Medium', 29.18657451253436, 1, 0, 71, 0, 0, '2019-09-27');

DROP TABLE IF EXISTS adopter;
CREATE TABLE adopter (
	adopter_id INT IDENTITY(1, 1) PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(50) NOT NULL, 
	email VARCHAR(50) UNIQUE NOT NULL,
	phone VARCHAR(10) UNIQUE NOT NULL
)

INSERT INTO adopter (first_name, last_name, email, phone)
VALUES ('Olivia', 'Bennett', 'olivia.bennett@email.com', '2065551901'),
    	('Ethan', 'Ramirez', 'ethan.r@pets.net', '2065551902'),
    	('Isabella', 'Stewart', 'istewart@mail.org', '2065551903'),
    	('Mason', 'Flores', 'm.flores@shelter.com', '2065551904'),
    	('Sophia', 'Ward', 'sophiaw@gmail.com', '2065551905'),
       ('Logan', 'Turner', 'lturner@adopt.net', '2065551906'),
       ('Mia', 'Collins', 'mia.collins@shelter.org', '2065551907'),
       ('Lucas', 'Reed', 'lucas.reed@mail.com', '2065551908'),
       ('Harper', 'Edwards', 'harpere@petshelter.com', '2065551909'),
       ('Elijah', 'Wright', 'ewright@hotmail.com', '2065551910'),
       ('Avery', 'Mitchell', 'averym@pets.net', '2065551911'),
       ('James', 'Rivera', 'j.rivera@shelter.org', '2065551912'),
       ('Ella', 'Parker', 'ella.parker@gmail.com', '2065551913'),
       ('Benjamin', 'Cox', 'ben.cox@email.com', '2065551914'),
       ('Luna', 'Howard', 'lunah@pets.com', '2065551915'),
       ('Henry', 'Morgan', 'hmorgan@adopt.org', '2065551916'),
       ('Grace', 'Henderson', 'graceh@mail.com', '2065551917'),
       ('Samuel', 'Brooks', 'sbrooks@pets.net', '2065551918'),
       ('Nora', 'James', 'noraj@shelter.com', '2065551919'),
       ('Owen', 'Sanders', 'owens@petshelter.net', '2065551920'),
       ('Aria', 'Price', 'aprice@mail.org', '2065551921'),
       ('Wyatt', 'Ross', 'wyatt.r@pets.net', '2065551922'),
       ('Zoey', 'Cook', 'zoeycook@gmail.com', '2065551923'),
       ('Carter', 'Bell', 'cbell@shelter.org', '2065551924'),
       ('Riley', 'Murphy', 'riley.murphy@pets.com', '2065551925'),
       ('Chloe', 'Bailey', 'cbailey@mail.com', '2065551926'),
       ('Leo', 'Gonzalez', 'leo.g@shelter.com', '2065551927'),
       ('Hazel', 'Bryant', 'hazelb@pets.org', '2065551928'),
       ('Jack', 'Ward', 'jward@petshelter.net', '2065551929'),
       ('Penelope', 'Gray', 'pen.gray@mail.net', '2065551930'),
       ('Daniel', 'Hughes', 'dhughes@shelter.com', '2065551931'),
       ('Madison', 'Cole', 'madison.cole@mail.com', '2065551932'),
       ('Isaac', 'Foster', 'isaacf@pets.net', '2065551933'),
       ('Victoria', 'Kim', 'vkim@shelter.org', '2065551934'),
       ('Jaxon', 'Reyes', 'jaxon.reyes@gmail.com', '2065551935');

DROP TABLE IF EXISTS staff;
CREATE TABLE staff (
	staff_id INT IDENTITY(1, 1) PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) UNIQUE NOT NULL,
	role VARCHAR(30) NOT NULL
)

INSERT INTO staff (first_name, last_name, email, role)
	VALUES ('Emma', 'Thompson', 'ethompson@shelter.org', 'Veterinarian'),
    		('Liam', 'Martinez', 'lmartinez@pawcare.org', 'Vet Assistant'),
    		('Ava', 'Nguyen', 'ava.nguyen@shelter.org', 'Coordinator'),
    		('Noah', 'Johnson', 'noahj@petshelter.net', 'Shelter Manager'),
    		('Sophia', 'Kim', 's.kim@shelter.org', 'Veterinarian'),
    		('Oliver', 'Davis', 'odavis@pawcare.org', 'Volunteer'),
    		('Isabella', 'Lopez', 'ilopez@shelter.org', 'Adoption Specialist'),
    		('Elijah', 'Brown', 'ebrown@pawcare.org', 'Vet Assistant'),
    		('Mia', 'Wilson', 'miaw@shelter.org', 'Front Desk'),
    		('Mateo', 'Hernandez', 'mhernandez@petshelter.net', 'Coordinator'),
    		('Charlotte', 'Garcia', 'c.garcia@shelter.org', 'Volunteer'),
    		('James', 'Lee', 'jlee@pawcare.org', 'Veterinarian'),
    		('Amelia', 'Hall', 'ahall@shelter.org', 'Adoption Specialist'),
    		('Benjamin', 'Young', 'byoung@petshelter.net', 'Shelter Manager'),
    		('Harper', 'Clark', 'harperc@shelter.org', 'Vet Assistant'),
    		('Lucas', 'Lewis', 'llewis@shelter.org', 'Volunteer'),
    		('Evelyn', 'Walker', 'e.walker@pawcare.org', 'Coordinator'),
    		('Henry', 'King', 'hking@petshelter.net', 'Adoption Specialist'),
    		('Ella', 'Scott', 'escott@shelter.org', 'Front Desk'),
    		('Alexander', 'Green', 'agreen@shelter.org', 'Veterinarian'),
    		('Avery', 'Adams', 'aadams@pawcare.org', 'Volunteer'),
    		('Jack', 'Baker', 'jbaker@shelter.org', 'Vet Assistant'),
    		('Scarlett', 'Rivera', 'srivera@petshelter.net', 'Coordinator'),
    		('Levi', 'Perez', 'lperez@pawcare.org', 'Shelter Manager'),
    		('Chloe', 'Carter', 'ccarter@shelter.org', 'Adoption Specialist'),
    		('Daniel', 'Murphy', 'dmurphy@pawcare.org', 'Volunteer'),
    		('Grace', 'Rogers', 'grogers@shelter.org', 'Front Desk'),
    		('Michael', 'Cook', 'mcook@petshelter.net', 'Veterinarian'),
    		('Aria', 'Morgan', 'amorgan@shelter.org', 'Vet Assistant'),
    		('Sebastian', 'Bell', 'sbell@pawcare.org', 'Coordinator'),
    		('Zoey', 'Reed', 'zreed@shelter.org', 'Volunteer'),
    		('Wyatt', 'Torres', 'wtorres@pawcare.org', 'Shelter Manager'),
    		('Lily', 'Ortiz', 'lortiz@petshelter.net', 'Adoption Specialist'),
    		('Gabriel', 'Sanders', 'gsanders@shelter.org', 'Vet Assistant'),
    		('Hannah', 'Price', 'hprice@pawcare.org', 'Front Desk');

DROP TABLE IF EXISTS appointment
CREATE TABLE appointment (
	appointment_id INT IDENTITY(1, 1) PRIMARY KEY,
	start_datetime DATETIME NOT NULL,
	end_datetime DATETIME NOT NULL,
	adopter_id INT,
	pet_id INT
)

INSERT INTO appointment (start_datetime, end_datetime, adopter_id, pet_id)
VALUES
    ('2022-01-31 11:00', '2022-01-31 11:45', 15, 1),
    ('2022-02-04 15:00', '2022-02-04 15:45', 21, 2),
    ('2023-06-27 10:30', '2023-06-27 11:15', 11, 3),
    ('2023-01-22 15:00', '2023-01-22 15:45', 24, 4),
    ('2019-05-11 13:00', '2019-05-11 13:45', 2, 5),
    ('2019-12-10 13:15', '2019-12-10 14:00', 21, 6),
    ('2022-03-30 13:00', '2022-03-30 13:45', 25, 7),
    ('2023-05-04 10:45', '2023-05-04 11:30', 3, 8),
    ('2023-02-17 10:30', '2023-02-17 11:15', 21, 9),
    ('2021-04-20 14:15', '2021-04-20 15:00', 4, 10),
    ('2020-08-23 09:15', '2020-08-23 10:00', 9, 11),
    ('2022-10-01 12:15', '2022-10-01 13:00', 20, 12),
    ('2019-04-02 14:45', '2019-04-02 15:30', 8, 13),
    ('2019-02-04 08:45', '2019-02-04 09:30', 4, 14),
    ('2021-10-22 13:15', '2021-10-22 14:00', 4, 15),
    ('2023-02-09 09:15', '2023-02-09 10:00', 34, 16),
    ('2019-07-21 11:15', '2019-07-21 12:00', 31, 17),
    ('2021-03-26 15:15', '2021-03-26 16:00', 23, 18),
    ('2022-06-29 16:15', '2022-06-29 17:00', 21, 19),
    ('2020-12-20 09:30', '2020-12-20 10:15', 24, 20),
    ('2019-08-05 16:00', '2019-08-05 16:45', 15, 21),
    ('2019-03-06 16:30', '2019-03-06 17:15', 9, 22),
    ('2022-09-29 08:45', '2022-09-29 09:30', 8, 23),
    ('2023-02-04 10:00', '2023-02-04 10:45', 8, 24),
    ('2023-08-26 10:00', '2023-08-26 10:45', 5, 25),
    ('2023-02-22 14:15', '2023-02-22 15:00', 28, 26),
    ('2019-05-15 16:45', '2019-05-15 17:30', 12, 27),
    ('2021-07-18 08:45', '2021-07-18 09:30', 23, 28),
    ('2023-05-17 15:00', '2023-05-17 15:45', 35, 29),
    ('2020-11-14 15:15', '2020-11-14 16:00', 27, 30),
    ('2023-04-20 08:30', '2023-04-20 09:15', 14, 31),
    ('2020-10-04 08:00', '2020-10-04 08:45', 26, 32),
    ('2020-05-17 14:30', '2020-05-17 15:15', 9, 33),
    ('2019-07-26 10:30', '2019-07-26 11:15', 32, 34),
    ('2021-01-12 08:45', '2021-01-12 09:30', 32, 35),
    ('2023-10-24 12:30', '2023-10-24 13:15', 15, 36),
    ('2022-04-09 11:00', '2022-04-09 11:45', 32, 37),
    ('2023-09-19 10:15', '2023-09-19 11:00', 28, 38),
    ('2020-07-31 16:00', '2020-07-31 16:45', 6, 39),
    ('2021-03-06 11:15', '2021-03-06 12:00', 11, 40),
    ('2023-07-22 14:45', '2023-07-22 15:30', 25, 41),
    ('2022-06-08 08:00', '2022-06-08 08:45', 27, 42),
    ('2020-09-24 11:00', '2020-09-24 11:45', 3, 43),
    ('2022-10-14 13:45', '2022-10-14 14:30', 27, 44),
    ('2020-10-10 12:00', '2020-10-10 12:45', 24, 45),
    ('2022-10-29 15:00', '2022-10-29 15:45', 12, 46),
    ('2023-03-14 14:15', '2023-03-14 15:00', 3, 47),
    ('2022-02-10 12:00', '2022-02-10 12:45', 17, 48),
    ('2020-11-29 08:15', '2020-11-29 09:00', 2, 49),
    ('2019-08-08 13:30', '2019-08-08 14:15', 32, 50),
    ('2022-06-02 08:30', '2022-06-02 09:15', 2, 51),
    ('2021-12-12 13:45', '2021-12-12 14:30', 4, 52),
    ('2023-01-02 15:30', '2023-01-02 16:15', 17, 53),
    ('2021-02-05 13:45', '2021-02-05 14:30', 5, 54),
    ('2021-06-02 09:15', '2021-06-02 10:00', 22, 55),
    ('2023-03-15 08:00', '2023-03-15 08:45', 6, 56),
    ('2020-04-08 10:45', '2020-04-08 11:30', 19, 57),
    ('2022-10-01 10:30', '2022-10-01 11:15', 19, 58),
    ('2022-03-17 14:45', '2022-03-17 15:30', 33, 59),
    ('2023-07-22 14:15', '2023-07-22 15:00', 1, 60),
    ('2023-12-08 16:00', '2023-12-08 16:45', 23, 61),
    ('2022-12-09 10:30', '2022-12-09 11:15', 16, 62),
    ('2019-12-12 16:45', '2019-12-12 17:30', 2, 63),
    ('2021-06-15 12:00', '2021-06-15 12:45', 32, 64),
    ('2021-10-11 16:00', '2021-10-11 16:45', 35, 65),
    ('2023-08-10 10:45', '2023-08-10 11:30', 24, 66),
    ('2019-02-23 15:00', '2019-02-23 15:45', 24, 67),
    ('2020-09-19 08:45', '2020-09-19 09:30', 20, 68),
    ('2019-09-11 10:45', '2019-09-11 11:30', 25, 69),
    ('2019-04-09 16:00', '2019-04-09 16:45', 18, 70),
    ('2021-05-27 09:15', '2021-05-27 10:00', 35, 71),
    ('2023-10-10 16:45', '2023-10-10 17:30', 33, 72),
    ('2023-05-23 08:15', '2023-05-23 09:00', 21, 73),
    ('2021-03-26 11:45', '2021-03-26 12:30', 8, 74),
    ('2022-03-04 10:00', '2022-03-04 10:45', 33, 75),
    ('2020-11-18 10:15', '2020-11-18 11:00', 22, 76),
    ('2021-01-19 13:15', '2021-01-19 14:00', 8, 77),
    ('2022-07-30 09:00', '2022-07-30 09:45', 30, 78),
    ('2023-06-21 08:00', '2023-06-21 08:45', 19, 79),
    ('2023-03-20 10:45', '2023-03-20 11:30', 17, 80),
    ('2022-04-10 12:15', '2022-04-10 13:00', 35, 81),
    ('2023-11-04 12:45', '2023-11-04 13:30', 29, 82),
    ('2020-05-11 12:30', '2020-05-11 13:15', 35, 83),
    ('2020-11-30 08:45', '2020-11-30 09:30', 21, 84),
    ('2021-07-16 14:00', '2021-07-16 14:45', 3, 85),
    ('2019-05-08 09:00', '2019-05-08 09:45', 31, 86),
    ('2020-07-19 10:45', '2020-07-19 11:30', 24, 87),
    ('2020-09-17 13:30', '2020-09-17 14:15', 2, 88),
    ('2023-07-21 09:15', '2023-07-21 10:00', 17, 89),
    ('2022-02-01 08:00', '2022-02-01 08:45', 29, 90),
    ('2023-09-02 14:15', '2023-09-02 15:00', 35, 91),
    ('2021-07-09 15:00', '2021-07-09 15:45', 7, 92),
    ('2019-02-05 11:00', '2019-02-05 11:45', 8, 93),
    ('2020-05-26 10:30', '2020-05-26 11:15', 15, 94),
    ('2022-01-20 09:15', '2022-01-20 10:00', 32, 95),
    ('2020-12-27 13:30', '2020-12-27 14:15', 25, 96),
    ('2023-09-18 13:15', '2023-09-18 14:00', 22, 97),
    ('2019-11-01 11:15', '2019-11-01 12:00', 6, 98),
    ('2023-12-12 13:30', '2023-12-12 14:15', 33, 99),
    ('2019-09-21 12:45', '2019-09-21 13:30', 5, 100);

DROP TABLE IF EXISTS application
CREATE TABLE application (
	application_id INT IDENTITY(1, 1) PRIMARY KEY,
	submit_date DATE NOT NULL,
	application_status VARCHAR(50) NOT NULL,
	pet_id INT NOT NULL,
	adopter_id INT NOT NULL
)

INSERT INTO application (submit_date, application_status, pet_id, adopter_id)
VALUES
    ('2023-09-21','Approved',39,8),
    ('2023-01-22','Rejected',47,11),
    ('2023-08-13','Pending',73,3),
    ('2022-04-30','Rejected',55,2),
    ('2019-09-10','Pending',75,22),
    ('2020-11-30','Pending',34,28),
    ('2023-02-17','Approved',64,3),
    ('2020-01-23','Rejected',31,18),
    ('2022-10-01','Pending',75,9),
    ('2022-12-22','Pending',64,7),
    ('2023-05-05','Approved',14,17),
    ('2023-02-09','Rejected',30,4),
    ('2021-09-22','Approved',51,10),
    ('2023-10-17','Approved',83,14),
    ('2023-11-08','Pending',96,16),
    ('2021-02-02','Approved',75,25),
    ('2020-06-04','Approved',39,1),
    ('2023-03-03','Approved',48,11),
    ('2023-02-22','Pending',50,5),
    ('2021-02-18','Pending',7,9),
    ('2021-03-15','Approved',23,24),
    ('2023-10-29','Pending',52,1),
    ('2022-05-26','Pending',50,5),
    ('2021-11-04','Pending',33,15),
    ('2021-01-12','Pending',43,32),
    ('2020-04-29','Pending',53,30),
    ('2021-11-25','Rejected',35,29),
    ('2023-12-25','Rejected',68,22),
    ('2021-03-06','Rejected',74,6),
    ('2023-02-05','Pending',35,28),
    ('2023-11-04','Pending',20,13),
    ('2022-06-11','Pending',33,33),
    ('2023-06-20','Approved',97,32),
    ('2023-03-14','Approved',41,12),
    ('2020-11-29','Approved',54,17),
    ('2023-10-26','Rejected',71,23),
    ('2023-08-23','Approved',26,26),
    ('2022-04-22','Pending',72,11),
    ('2021-06-02','Rejected',73,5),
    ('2020-08-31','Pending',40,16),
    ('2023-11-30','Approved',65,29),
    ('2023-03-15','Pending',68,26),
    ('2023-07-22','Approved',69,33),
    ('2020-04-17','Pending',60,28),
    ('2019-09-20','Approved',59,35),
    ('2021-06-15','Pending',74,2),
    ('2021-10-11','Pending',80,32),
    ('2022-02-28','Rejected',40,16),
    ('2020-09-19','Pending',25,24),
    ('2019-09-11','Pending',30,20),
    ('2021-07-02','Pending',3,25),
    ('2023-10-10','Rejected',71,35),
    ('2020-02-02','Pending',28,33),
    ('2022-05-03','Approved',57,7),
    ('2022-10-30','Pending',61,22),
    ('2022-07-30','Pending',55,8),
    ('2021-05-28','Pending',25,28),
    ('2023-03-20','Pending',40,19),
    ('2019-06-07','Rejected',66,28),
    ('2022-10-04','Pending',78,24),
    ('2022-02-13','Pending',78,33),
    ('2022-07-03','Pending',47,33),
    ('2020-07-19','Approved',34,31),
    ('2021-05-03','Pending',73,32),
    ('2021-02-23','Rejected',34,2),
    ('2023-09-02','Rejected',22,29),
    ('2020-06-08','Pending',74,24),
    ('2019-11-17','Pending',4,20),
    ('2020-04-15','Pending',38,12),
    ('2019-02-20','Pending',72,22),
    ('2019-11-01','Pending',71,22),
    ('2019-09-21','Approved',71,33),
    ('2021-02-12','Pending',29,4),
    ('2021-04-02','Pending',64,35),
    ('2023-08-10','Approved',18,30),
    ('2021-01-10','Pending',47,26),
    ('2021-10-09','Pending',9,12),
    ('2022-01-24','Approved',90,34),
    ('2022-07-19','Approved',57,1),
    ('2021-05-10','Pending',54,22),
    ('2020-11-27','Pending',40,22),
    ('2023-11-09','Rejected',15,30),
    ('2020-04-18','Pending',40,26),
    ('2019-12-23','Pending',50,30),
    ('2022-04-18','Pending',54,34),
    ('2021-02-07','Approved',75,32),
    ('2019-12-02','Approved',65,24),
    ('2020-11-20','Approved',20,24),
    ('2023-05-20','Rejected',19,12),
    ('2020-02-01','Pending',87,29),
    ('2020-12-27','Pending',43,35),
    ('2021-10-18','Rejected',34,26),
    ('2020-02-17','Pending',28,11),
    ('2020-04-01','Approved',49,10),
    ('2021-10-05','Approved',52,18),
    ('2022-10-24','Approved',29,12),
    ('2022-07-20','Approved',52,30),
    ('2020-02-01','Rejected',74,22),
    ('2019-03-17','Pending',36,19),
    ('2023-03-10','Approved',95,19),
    ('2021-11-14','Approved',27,12),
    ('2022-03-13','Approved',45,23),
    ('2022-05-31','Pending',10,14),
    ('2020-10-19','Rejected',60,11),
    ('2022-06-30','Rejected',75,17),
    ('2021-08-03','Rejected',32,9),
    ('2023-07-30','Pending',5,19),
    ('2020-05-25','Rejected',44,17),
    ('2022-06-29','Pending',53,6),
    ('2020-12-14','Rejected',71,27),
    ('2021-01-23','Pending',3,13),
    ('2020-01-22','Approved',8,1),
    ('2021-04-03','Approved',92,25),
    ('2019-06-22','Pending',36,32),
    ('2019-07-22','Rejected',97,21),
    ('2023-01-04','Approved',43,20),
    ('2022-12-09','Rejected',63,15),
    ('2020-04-15','Pending',52,16),
    ('2019-12-24','Pending',40,8),
    ('2020-11-06','Pending',57,28),
    ('2021-01-01','Pending',42,28),
    ('2022-05-09','Pending',46,17),
    ('2021-06-27','Rejected',65,29),
    ('2020-03-25','Pending',67,5),
    ('2022-02-16','Pending',88,5),
    ('2022-06-16','Pending',67,32),
    ('2021-04-06','Rejected',74,22),
    ('2020-05-25','Pending',51,35),
    ('2020-12-09','Rejected',6,28),
    ('2021-09-23','Approved',96,23),
    ('2022-01-13','Pending',68,17),
    ('2023-12-01','Pending',19,13),
    ('2019-04-05','Pending',51,28),
    ('2022-08-22','Rejected',51,3),
    ('2023-10-24','Approved',54,30),
    ('2022-05-15','Approved',64,23),
    ('2021-03-16','Approved',60,34),
    ('2020-03-10','Rejected',64,27),
    ('2021-09-10','Rejected',30,33),
    ('2019-05-13','Approved',34,17),
    ('2021-02-23','Pending',66,10),
    ('2019-02-22','Pending',51,6),
    ('2019-04-21','Pending',35,11),
    ('2023-03-24','Pending',11,16),
    ('2022-05-03','Approved',74,3),
    ('2023-12-18','Pending',94,19),
    ('2021-04-17','Pending',46,21),
    ('2022-01-06','Pending',75,34),
    ('2019-08-27','Approved',49,22),
    ('2021-11-15','Rejected',40,17);

DROP TABLE IF EXISTS adoption
CREATE TABLE adoption (
	adoption_id INT IDENTITY(1, 1) PRIMARY KEY,
	adoption_fee MONEY NOT NULL,
	adoption_date DATE NOT NULL,
	pet_id INT NOT NULL,
	appointment_id INT NOT NULL,
	application_id INT NOT NULL
)

INSERT INTO adoption (adoption_fee, adoption_date, pet_id, appointment_id, application_id)
VALUES
   (210, '2023-09-22', 39, 39, 1),
   (114, '2023-02-18', 64, 16, 7),
   (298, '2023-05-06', 14, 31, 11),
   (217, '2021-02-03', 75, 28, 16),
   (231, '2020-06-05', 39, 17, 17),
   (235, '2023-03-04', 48, 47, 18),
   (385, '2021-03-16', 23, 22, 21),
   (301, '2023-06-21', 97, 79, 33),
   (137, '2023-03-15', 41, 47, 34),
   (440, '2020-11-30', 54, 49, 35),
   (405, '2023-08-24', 26, 37, 37),
   (14,  '2023-07-23', 69, 41, 43),
   (462, '2019-09-21', 59, 45, 45),
   (135, '2023-11-01', 65, 65, 41),
   (404, '2020-07-20', 34, 63, 64),
   (352, '2019-05-14', 18, 70, 99),
   (468, '2023-08-11', 90, 66, 75),
   (405, '2022-01-25', 57, 90, 78),
   (76,  '2022-07-20', 49, 57, 79),
   (300, '2020-04-02', 52, 94, 94),
   (88,  '2021-10-06', 29, 52, 95),
   (171, '2022-10-25', 95, 75, 96),
   (477, '2022-07-21', 27, 75, 97),
   (245, '2023-03-11', 52, 97, 100),
   (497, '2021-11-15', 27, 28, 101),
   (94,  '2022-03-14', 45, 18, 102),
   (254, '2020-04-16', 52, 63, 118),
   (135, '2020-01-23', 8, 112, 113),
   (175, '2023-01-05', 43, 64, 116),
   (325, '2022-05-16', 60, 59, 135),
   (66,  '2021-03-17', 74, 57, 137),
   (477, '2022-05-04', 60, 47, 145),
   (62,  '2019-08-28', 74, 69, 148),
   (77,  '2019-08-28', 49, 69, 148);

DROP TABLE IF EXISTS adopter_application
CREATE TABLE adopter_application (
	adopter_application INT IDENTITY(1, 1) PRIMARY KEY,
	adopter_id INT NOT NULL,
	application_id INT NOT NULL
)

INSERT INTO adopter_application (adopter_id, application_id)
VALUES
    (8, 1),
    (3, 7),
    (17, 11),
    (10, 13),
    (14, 14),
    (25, 16),
    (1, 17),
    (11, 18),
    (24, 21),
    (32, 33),
    (12, 34),
    (17, 35),
    (26, 37),
    (33, 43),
    (35, 45),
    (29, 41),
    (31, 63),
    (17, 65),
    (30, 75),
    (34, 78),
    (1, 79),
    (31, 64),
    (12, 95),
    (18, 102),
    (12, 101),
    (25, 92),     
    (23, 96),      
    (12, 97),      
    (19, 100),    
    (23, 130),    
    (20, 116),     
    (23, 123),    
    (12, 135),     
    (34, 118),     
    (23, 136),     
    (34, 137),     
    (3, 145),      
    (22, 148);     

DROP TABLE IF EXISTS adoption_staff
CREATE TABLE adoption_staff (
	adoption_staff_id INT IDENTITY(1, 1) PRIMARY KEY,
	adoption_id INT NOT NULL,
	staff_id INT NOT NULL
)

INSERT INTO adoption_staff (adoption_id, staff_id) VALUES
(1, 12),
(2, 34),
(3, 7),
(4, 21),
(5, 3),
(6, 29),
(7, 18),
(8, 1),
(9, 25),
(10, 9),
(11, 33),
(12, 14),
(13, 6),
(14, 28),
(15, 19),
(16, 30),
(17, 35),
(18, 4),
(19, 24),
(20, 11),
(21, 27),
(22, 13),
(23, 20),
(24, 31),
(25, 8),
(26, 16),
(27, 26),
(28, 5),
(29, 22),
(30, 32),
(31, 2),
(32, 10),
(33, 17),
(34, 15),
(35, 23),
(36, 28),
(37, 30),
(38, 33),
(39, 6),
(40, 12);

DROP TABLE IF EXISTS appointment_staff
CREATE TABLE appointment_staff(
	appointment_staff_id INT IDENTITY(1, 1) PRIMARY KEY,
	staff_id INT,
	appointment_id INT
)

INSERT INTO appointment_staff (staff_id, appointment_id) VALUES
(12, 1),
(3, 2),
(28, 3),
(7, 4),
(19, 5),
(34, 6),
(15, 7),
(9, 8),
(21, 9),
(5, 10),
(30, 11),
(11, 12),
(26, 13),
(1, 14),
(18, 15),
(24, 16),
(33, 17),
(14, 18),
(6, 19),
(20, 20),
(31, 21),
(13, 22),
(29, 23),
(2, 24),
(16, 25),
(27, 26),
(10, 27),
(23, 28),
(8, 29),
(17, 30),
(32, 31),
(4, 32),
(25, 33),
(35, 34),
(22, 35),
(12, 36),
(3, 37),
(28, 38),
(7, 39),
(19, 40),
(34, 41),
(15, 42),
(9, 43),
(21, 44),
(5, 45),
(30, 46),
(11, 47),
(26, 48),
(1, 49),
(18, 50),
(24, 51),
(33, 52),
(14, 53),
(6, 54),
(20, 55),
(31, 56),
(13, 57),
(29, 58),
(2, 59),
(16, 60),
(27, 61),
(10, 62),
(23, 63),
(8, 64),
(17, 65),
(32, 66),
(4, 67),
(25, 68),
(35, 69),
(22, 70),
(12, 71),
(3, 72),
(28, 73),
(7, 74),
(19, 75),
(34, 76),
(15, 77),
(9, 78),
(21, 79),
(5, 80),
(30, 81),
(11, 82),
(26, 83),
(1, 84),
(18, 85),
(24, 86),
(33, 87),
(14, 88),
(6, 89),
(20, 90),
(31, 91),
(13, 92),
(29, 93),
(2, 94),
(16, 95),
(27, 96),
(10, 97),
(23, 98),
(8, 99),
(17, 100);

DROP TABLE IF EXISTS adoption_adopter
CREATE TABLE adoption_adopter(
	adoption_adopter_id INT IDENTITY(1, 1) PRIMARY KEY,
	adopter_id INT NOT NULL,
	adoption_id INT NOT NULL
)

INSERT INTO adoption_adopter (adopter_id, adoption_id)
VALUES
    (8,   1),   -- app_id 1
    (3,   2),   -- app_id 7
    (17,  3),   -- app_id 11
    (25,  4),   -- app_id 16
    (1,   5),   -- app_id 17
    (11,  6),   -- app_id 18
    (24,  7),   -- app_id 21
    (32,  8),   -- app_id 33
    (12,  9),   -- app_id 34
    (17, 10),   -- app_id 35
    (26, 11),   -- app_id 37
    (33, 12),   -- app_id 43
    (35, 13),   -- app_id 45
    (29, 14),   -- app_id 41
    (31, 15),   -- app_id 64
    (24, 16),   -- app_id 99
    (30, 17),   -- app_id 75
    (7,  18),   -- app_id 78
    (1,  19),   -- app_id 79
    (10, 20),   -- app_id 94
    (18, 21),   -- app_id 95
    (23, 22),   -- app_id 96
    (30, 23),   -- app_id 97
    (19, 24),   -- app_id 100
    (12, 25),   -- app_id 101
    (23, 26),   -- app_id 102
    (63, 27),   -- app_id 118  
    (1,  28),   -- app_id 113
    (20, 29),   -- app_id 116
    (23, 30),   -- app_id 135
    (34, 31),   -- app_id 137
    (3,  32),   -- app_id 145
    (22, 33);   -- app_id 148

-------------------------
--DEFAULT CONSTRAINTS:
-------------------------
ALTER TABLE application
ADD application_fee MONEY DEFAULT 25.00

ALTER TABLE application
ADD CONSTRAINT df_application_status
DEFAULT 'Pending' FOR application_status;

------------------------
--CHECK CONSTRAINTS:
------------------------
--pet constraints
ALTER TABLE pet
ADD CONSTRAINT CHK_species_type
CHECK (species IN ('Cat', 'Dog', 'Bird', 'Rabbit'))

ALTER TABLE pet
ADD CONSTRAINT chk_pet_age
CHECK (age_months > 0);

--application constraints
ALTER TABLE application
ADD CONSTRAINT CHK_application_status
CHECK (application_status IN ('Pending', 'Approved', 'Rejected'))

ALTER TABLE application
ADD CONSTRAINT fk_application_pet
FOREIGN KEY (pet_id) REFERENCES pet(pet_id);

ALTER TABLE application
ADD CONSTRAINT fk_application_adopter
FOREIGN KEY (adopter_id) REFERENCES adopter(adopter_id);

--appointment constraints
ALTER TABLE appointment
ADD CONSTRAINT fk_appointment_adopter
FOREIGN KEY (adopter_id) REFERENCES adopter(adopter_id)

ALTER TABLE appointment
ADD CONSTRAINT fk_appointment_pet
FOREIGN KEY (pet_id) REFERENCES pet(pet_id);

--adoption constraints
ALTER TABLE adoption
ADD CONSTRAINT fk_adoption_pet
FOREIGN KEY (pet_id) REFERENCES pet(pet_id);

ALTER TABLE adoption
ADD CONSTRAINT fk_adoption_appointment
FOREIGN KEY (appointment_id) REFERENCES appointment(appointment_id);

ALTER TABLE adoption
ADD CONSTRAINT fk_adoption_application
FOREIGN KEY (application_id) REFERENCES application(application_id);

--adoption_staff constraints
ALTER TABLE adoption_staff
ADD CONSTRAINT fk_adoption
FOREIGN KEY (adoption_id) REFERENCES adoption(adoption_id)

ALTER TABLE adoption_staff
ADD CONSTRAINT fk_adoption_staff
FOREIGN KEY (staff_id) REFERENCES staff(staff_id)

--appointment_staff constraints
ALTER TABLE appointment_staff
ADD CONSTRAINT fk_adoption_staff
FOREIGN KEY (appointment_id) REFERENCES appointment(appointment_id)

ALTER TABLE appointment_staff
ADD CONSTRAINT fk_adoption_staff
FOREIGN KEY (staff_id) REFERENCES staff(staff_id)

--adoption_adopter
ALTER TABLE adoption_adopter
ADD CONSTRAINT fk_adoption_adopter
FOREIGN KEY (adoption_id) REFERENCES adoption(adoption_id)

ALTER TABLE adoption_adopter
ADD CONSTRAINT fk_adoption_adoption
FOREIGN KEY (adopter_id) REFERENCES adopter(adopter_id)

--adopter_application
ALTER TABLE adopter_application
ADD CONSTRAINT fk_adop_app_adop
FOREIGN KEY (adopter_id) REFERENCES adopter(adopter_id)

ALTER TABLE adopter_application
ADD CONSTRAINT fk_adop_app_app
FOREIGN KEY (application_id) REFERENCES application(application_id)
