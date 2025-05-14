
DROP TABLE IF EXISTS Appointment;
DROP TABLE IF EXISTS Cliente2;
DROP TABLE IF EXISTS Photographer;
DROP TABLE IF EXISTS Package;
DROP TABLE IF EXISTS EventType;
DROP TABLE IF EXISTS PaymentMethod;


CREATE TABLE Cliente2 (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Photographer (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Package (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10,2)
);

CREATE TABLE EventType(
    ID INT PRIMARY KEY,
    Type VARCHAR(50)
);

CREATE TABLE PaymentMethod (
    ID INT PRIMARY KEY,
    Type VARCHAR(50)
);

CREATE TABLE Appointment (
    ID INT PRIMARY KEY,
    Date DATE,
    Location VARCHAR(150),
    ClientID INT,
    PhotographerID INT,
    PackageID INT,
    EventTypeID INT,
    PaymentMethodID INT,
    FOREIGN KEY (ClientID) REFERENCES Cliente2(ID),
    FOREIGN KEY (PhotographerID) REFERENCES Photographer(ID),
    FOREIGN KEY (PackageID) REFERENCES Package(ID),
    FOREIGN KEY (EventTypeID) REFERENCES  EventType(ID),
    FOREIGN KEY (PaymentMethodID) REFERENCES PaymentMethod (ID)
);