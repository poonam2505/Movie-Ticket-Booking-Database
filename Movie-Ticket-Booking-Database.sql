USE BOOKING;

drop table Moviegoers;

CREATE TABLE Moviegoers(
Moviegoer_ID INT PRIMARY KEY,
Moviegoer_Name VARCHAR (30),
Phone varchar(40) ,
Email VARCHAR(30)
);

SELECT* FROM Moviegoers;

INSERT INTO Moviegoers VALUES
(1,'Poonam Bhoi', 9876678998 ,'poonambhoi123@gmail.com'),
(2,'Aniket parde',956789547 ,'aniketparde34@gmail.com'),
(3,'Purva patil' ,9356805488,'purva25@gmail.com'),
(4,'Nikhil patil',9967897665,'Nikhil12@gmail.com'),
(5,'Raju kale' ,5674786677,'rajkale23@gmail.com'),
(6,'Meena raut',123456789,'meena56@gmail.com'),
(7,'Divya raje',1234567890,'Divya@78.com'),
(8,'Pooja bhambid',9876543210,'Pooja25@gmail.com');

select* from Moviegoers;

create table Movies(
Movie_ID int primary key,
Movie_Title varchar(60),
 Genre varchar(100),
 Language varchar(60),
 Duration_Minutes int,
 Release_Date date
);

select* from Movies;

insert into Movies values
(101,'Avengers: Endgame','Action','English','150','2019-04-26'),
(102,'Salar','Action','Hindi','160','2024-12-10'),
(103,'saiyara','Love Story','Hindi','170','2025-02-14'),
(104,'Animal','aduld','Hindi','200','2023-12-5'),
(105,'Bahubali','historic','Telgu','190','2016-03-23'),
(106, 'KGF Chapter 2', 'Action', 'Kannada', 168, '2022-04-14'),
(107, 'RRR', 'Action', 'Telugu', 187, '2022-03-25'),
(108, 'Pushpa: The Rise', 'Action', 'Telugu', 179, '2021-12-17'),
(109, 'Drishyam 2', 'Thriller', 'Hindi', 140, '2022-11-18'),
(110, 'Brahmastra', 'Fantasy', 'Hindi', 167, '2022-09-09'),
(111, 'Stree 2', 'Comedy', 'Hindi', 149, '2024-08-15'),
(112, 'Leo', 'Action', 'Tamil', 164, '2023-10-19'),
(113, 'Vikram', 'Action', 'Tamil', 174, '2022-06-03'),
(114, 'Taare Zameen Par', 'Drama', 'Hindi', 165, '2007-12-21'),
(115, 'Chhichhore', 'Comedy', 'Hindi', 143, '2019-09-06');

select* from Movies;

create table Theatres(
Theatre_ID int primary key,
Theatre_Name varchar(50),
City varchar(20),
Address varchar(100)
);

insert into Theatres values
(201, 'PVR Cinemas', 'Pune', 'Phoenix Mall'),
(202, 'INOX', 'Mumbai', 'R City Mall'),
(203, 'Cinepolis', 'Delhi', 'DLF Mall'),
(204, 'Miraj Cinemas', 'Pune', 'Amanora Mall'),
(205, 'PVR Icon', 'Mumbai', 'Lower Parel'),
(206, 'INOX Megaplex', 'Pune', 'Bund Garden Road'),
(207, 'Cinepolis Westend', 'Pune', 'Westend Mall'),
(208, 'PVR Cinemas', 'Bangalore', 'Orion Mall'),
(209, 'INOX', 'Delhi', 'Select Citywalk'),
(210, 'Cinepolis', 'Bangalore', 'ETA Mall'),
(211, 'PVR Cinemas', 'Hyderabad', 'Inorbit Mall'),
(212, 'INOX', 'Chennai', 'Express Avenue'),
(213, 'Miraj Cinemas', 'Nagpur', 'Empress City Mall'),
(214, 'PVR Cinemas', 'Nashik', 'City Centre Mall'),
(215, 'Cinepolis', 'Ahmedabad', 'Acropolis Mall');

select* from Theatres;

create table Shows(
Show_ID int primary key,
Movie_ID int,
Theatre_ID int,
Show_Date date,
Start_Time time,
Screen_No int,

FOREIGN KEY(Movie_ID)
REFERENCES Movies(Movie_ID),

FOREIGN KEY (Theatre_ID)
REFERENCES Theatres(Theatre_ID)
);

insert into Shows values
(301, 101, 201, '2026-09-10', '10:00:00', 1),
(302, 102, 201, '2026-09-10', '14:00:00', 2),
(303, 103, 202, '2026-09-10', '18:00:00', 1),
(304, 104, 203, '2026-09-10', '20:00:00', 3),
(305, 105, 204, '2026-09-11', '21:00:00', 2),
(306, 106, 205, '2026-09-11', '11:00:00', 1),
(307, 107, 206, '2026-09-11', '14:30:00', 2),
(308, 108, 207, '2026-09-11', '17:30:00', 1),
(309, 109, 208, '2026-09-12', '10:30:00', 3),
(310, 110, 209, '2026-09-12', '19:00:00', 2),
(311, 111, 210, '2026-09-12', '12:00:00', 1),
(312, 112, 211, '2026-09-12', '15:30:00', 2),
(313, 113, 212, '2026-09-13', '18:00:00', 1),
(314, 114, 213, '2026-09-13', '20:30:00', 2),
(315, 115, 214, '2026-09-13', '21:00:00', 3),

(316, 101, 215, '2026-09-14', '11:00:00', 1),
(317, 106, 201, '2026-09-14', '16:00:00', 2),
(318, 107, 202, '2026-09-14', '19:30:00', 1),
(319, 108, 203, '2026-09-15', '18:30:00', 3),
(320, 109, 204, '2026-09-15', '21:00:00', 2);
SELECT * FROM Shows;

create table Seats(
Seat_ID int primary key,
Theatre_ID int,
Screen_No int,
Seat_Number varchar(20),
Seat_type varchar(50),
Ticket_Price int,

FOREIGN KEY (Theatre_ID)
REFERENCES Theatres(Theatre_ID)
);

INSERT INTO Seats VALUES
(401, 201, 1, 'A1', 'Regular', 150.00),
(402, 201, 1, 'A2', 'Regular', 150.00),
(403, 201, 1, 'A3', 'Regular', 150.00),
(404, 201, 1, 'B1', 'Premium', 250.00),
(405, 201, 1, 'B2', 'Premium', 250.00),
(406, 201, 2, 'A1', 'Regular', 150.00),
(407, 201, 2, 'A2', 'Regular', 150.00),
(408, 201, 2, 'B1', 'Premium', 250.00),
(409, 202, 1, 'A1', 'Regular', 180.00),
(410, 202, 1, 'A2', 'Regular', 180.00),
(411, 202, 1, 'B1', 'Premium', 280.00),
(412, 202, 1, 'B2', 'Premium', 280.00),
(413, 203, 3, 'A1', 'Regular', 200.00),
(414, 203, 3, 'A2', 'Regular', 200.00),
(415, 203, 3, 'B1', 'Premium', 300.00);

select* from Seats;

create table Tickets(
Ticket_ID int primary key,
Show_ID int,
Seat_ID int,
Moviegoer_ID int,
Booked_At datetime,
 Ticket_Status VARCHAR(30),
 
FOREIGN KEY (Show_ID)
REFERENCES Shows(Show_ID),

FOREIGN KEY (Seat_ID)
REFERENCES Seats(Seat_ID),

FOREIGN KEY (Moviegoer_ID)
REFERENCES Moviegoers(Moviegoer_ID)
);
TRUNCATE TABLE Tickets;

INSERT INTO Tickets
VALUES
(501, 301, 401, 1, '2026-09-06 10:30:00', 'Booked'),
(502, 301, 402, 2, '2026-09-06 10:35:00', 'Booked'),
(503, 302, 406, 1, '2026-09-06 11:00:00', 'Booked'),
(504, 302, 407, 2, '2026-09-06 11:15:00', 'Booked'),
(505, 303, 409, 1, '2026-09-06 12:00:00', 'Cancelled'),
(506, 303, 410, 2, '2026-09-06 12:10:00', 'Booked'),
(507, 304, 413, 1, '2026-09-06 13:00:00', 'Booked'),
(508, 304, 414, 2, '2026-09-06 13:20:00', 'Booked'),
(509, 305, 416, 1, '2026-09-06 14:00:00', 'Cancelled'),
(510, 305, 417, 2, '2026-09-06 14:15:00', 'Booked'),
(511, 306, 419, 1, '2026-09-06 15:00:00', 'Booked'),
(512, 306, 420, 2, '2026-09-06 15:20:00', 'Cancelled'),
(513, 307, 422, 1, '2026-09-06 16:00:00', 'Booked'),
(514, 307, 423, 2, '2026-09-06 16:15:00', 'Booked'),
(515, 308, 425, 1, '2026-09-06 17:00:00', 'Cancelled');

SELECT * FROM Tickets;














