CREATE TABLE MyDimDate (
    dateid INT PRIMARY KEY NOT NULL,
    date DATE NOT NULL,
    year SMALLINT NOT NULL,
    Quarter SMALLINT NOT NULL,
    Quartername CHAR(2) NOT NULL,
    Month SMALLINT NOT NULL,
    Monthname VARCHAR(15) NOT NULL,
    Day SMALLINT NOT NULL,
    Weekday SMALLINT NOT NULL,
    WeekdayName VARCHAR(15) NOT NULL
);


CREATE TABLE MyDimWaste (
    wasteid INT PRIMARY KEY NOT NULL,
    wastetype VARCHAR(20) NOT NULL
);


CREATE TABLE MyDimTruck (
    Truckid INT PRIMARY KEY NOT NULL,
    TruckType VARCHAR(20) NOT NULL
);


CREATE TABLE MyDimZone (
    Stationid INT PRIMARY KEY NOT NULL,
    City VARCHAR(30) NOT NULL
);


CREATE TABLE MyFactTrips (
    Tripid INT PRIMARY KEY NOT NULL,
    Dateid INT NOT NULL,
    Stationid INT NOT NULL,
    Truckid INT NOT NULL,
    wastecollected FLOAT(2) NOT NULL,
    -- Foreign key references to dimension tables
    FOREIGN KEY (Dateid) REFERENCES MyDimDate (Dateid),
    FOREIGN KEY (Stationid) REFERENCES MyDimZone (Stationid),
    FOREIGN KEY (Truckid) REFERENCES MyDimTruck (Truckid)
);

