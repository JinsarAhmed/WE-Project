SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
  time_zone = "+00:00";

CREATE TABLE `cars` (
  `carID` int(4) NOT NULL,
  `company` varchar(10) NOT NULL,
  `carType` varchar(10) NOT NULL,
  `carModel` varchar(30) NOT NULL,
  `year` int(4) NOT NULL,
  `fuel` varchar(10) NOT NULL,
  `gear` varchar(10) NOT NULL,
  `km` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `location` varchar(30) NOT NULL,
  `ownership` varchar(15) NOT NULL,
  `description` varchar(100) NOT NULL,
  `imageLocation` varchar(100) NOT NULL,
  `userID` int(4) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- dummy data
INSERT INTO
  `cars` (
    `carID`,
    `company`,
    `carType`,
    `carModel`,
    `year`,
    `fuel`,
    `gear`,
    `km`,
    `price`,
    `location`,
    `ownership`,
    `description`,
    `imageLocation`,
    `userID`
  )
VALUES
  (
    100,
    'Hundai',
    'Suv',
    'Creta',
    2015,
    'Diesel',
    'Automatic',
    '6000',
    '3000000',
    'Rawalpindi',
    'Second Hand',
    'abc',
    'upload/creta.jpg',
    31
  ),
  (
    80,
    'MG Motors',
    'Sedan',
    'Swift Dezire',
    2000,
    'Deisel',
    'Automatic',
    '2323323',
    '500000',
    'Lahore',
    'Others',
    'single owner\r\nneat condition',
    'upload/jeep.jpg',
    30
  ),
  (
    89,
    'ford',
    'Sports Car',
    'mustang',
    2015,
    'Petrol',
    'Manual',
    '5000',
    '8000000',
    'Lahore',
    'Second Hand',
    'genuine buyers only\r\nshowroom condition car\r\nnew tyres\r\n5000 kms driven',
    'upload/mustang.jpg',
    30
  ),
  (
    56,
    'Toyota',
    'Sedan',
    'Yaris',
    2021,
    'Petrol',
    'Automatic',
    '120000',
    '58.5 Lacs',
    'Karachi',
    'Second Hand',
    'genuine buyers only\r\nshowroom condition car\r\nnew tyres\r\n5000 kms driven',
    'upload/yaris.jpg',
    30
  ),
  (
    45,
    'Toyota',
    'Truck',
    'Revo Rocco',
    2022,
    'Petrol',
    'Automatic',
    '220000',
    '158.5 Lacs',
    'Hyderabad',
    'Second Hand',
    'genuine buyers only\r\nshowroom condition car\r\nnew tyres\r\n5000 kms driven',
    'upload/yaris.jpg',
    30
  ),
  (
    78,
    'Honda',
    'Hatch Back',
    'Vezel',
    2021,
    'Petrol',
    'Automatic',
    '140000',
    '68.5 Lacs',
    'Karachi',
    'Second Hand',
    'genuine buyers only\r\nshowroom condition car\r\nnew tyres\r\n5000 kms driven',
    'upload/yaris.jpg',
    30
  ),
  (
    98,
    'Honda',
    'Sedan',
    'Civic 1.5 RS Turbo',
    2022,
    'Petrol',
    'Automatic',
    '250030',
    '118.5 Lacs',
    'Hyderabad',
    'Second Hand',
    'genuine buyers only\r\nshowroom condition car\r\nnew tyres\r\n5000 kms driven',
    'upload/yaris.jpg',
    30
  ),
  (
    55,
    'Maruti Suz',
    'Coupe',
    'alto 800',
    2000,
    'Petrol',
    'Manual',
    '80000',
    '355000',
    'Moro',
    'Others',
    'new tyres\r\nneat car \r\nshowroom condition \r\nwell maintained \r\nkaranakata registered vehicle',
    'upload/alto.jfif',
    32
  );

CREATE TABLE `orders` (
  `orderID` int(4) NOT NULL,
  `carID` int(4) NOT NULL,
  `userID` int(4) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO
  `orders` (`orderID`, `carID`, `userID`)
VALUES
  (41, 21, 32),
  (45, 26, 32),
  (53, 17, 30),
  (54, 27, 27),
  (55, 17, 28),
  (56, 17, 34),
  (57, 17, 33),
  (58, 17, 30);

CREATE TABLE `users` (
  `userID` int(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO
  `users` (
    `userID`,
    `name`,
    `email`,
    `password`,
    `phone`,
    `address`
  )
VALUES
  (
    27,
    'Steve',
    'steve@gmail.com',
    'st',
    '2323232323',
    'Steve house(H)'
  ),
  (
    28,
    'admin',
    'admin@gmail',
    'admin',
    '4443',
    'sdsdf'
  ),
  (
    30,
    'Devasurya S',
    'devasuryasuresh@gmail.com',
    'dev',
    '9072581323',
    'Paryathukunnel(H)'
  ),
  (
    31,
    'Abhilash',
    'abhilash@gmail.com',
    '123',
    '',
    'abc'
  ),
  (
    32,
    'Midhun',
    'midhun@gmail.com',
    '123',
    '',
    'abc'
  ),
  (
    33,
    'aryan',
    'aryan@gmail',
    '123',
    '',
    'dsffdsffss'
  ),
  (
    34,
    'Melvin',
    'melvin@gmail.com',
    '123',
    '',
    'yttdwyeff'
  );

ALTER TABLE
  `cars`
ADD
  PRIMARY KEY (`carID`) USING BTREE,
ADD
  KEY `userID` (`userID`);

ALTER TABLE
  `orders`
ADD
  PRIMARY KEY (`orderID`),
ADD
  KEY `orders_ibfk_1` (`carID`),
ADD
  KEY `orders_ibfk_2` (`userID`);

ALTER TABLE
  `users`
ADD
  PRIMARY KEY (`userID`);

ALTER TABLE
  `cars`
MODIFY
  `carID` int(4) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 30;

ALTER TABLE
  `orders`
MODIFY
  `orderID` int(4) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 59;

ALTER TABLE
  `users`
MODIFY
  `userID` int(4) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 35;

ALTER TABLE
  `cars`
ADD
  CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE;

ALTER TABLE
  `orders`
ADD
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`carID`) REFERENCES `cars` (`carID`) ON DELETE CASCADE,
ADD
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

COMMIT;

;

;

;