-- Create table --
create table Items (
	ItemID varchar(10) not null,
	Name varchar(200) not null,
	Currently decimal(8,2) not null,
	Buy_Price decimal(8,2),
	First_Bid decimal(8,2) not null,
	Number_of_Bids int not null,
	Location varchar(50) not null,
	Country varchar(20) not null,
	Started timestamp not null,
	Ends timestamp not null,
	UserID varchar(30) not null,
	Description varchar(4000) not null,
	primary key (ItemID)
);

-- Load items.csv into table --
LOAD DATA LOCAL INFILE '~/shared/project2/CS144-Part2/items.csv' 
INTO TABLE Items FIELDS TERMINATED BY '\t' OPTIONALLY ENCLOSED BY '"';

-- Create table --
create table LocationInfo (
	Location varchar(50) not null,
	Country varchar(20) not null,
	Latitude decimal(9,6),
	Longitude decimal(9,6),
	primary key (Location, Country)
);

-- Load location-info.csv into table --
LOAD DATA LOCAL INFILE '~/shared/project2/CS144-Part2/location-info.csv' 
INTO TABLE LocationInfo FIELDS TERMINATED BY '\t' OPTIONALLY ENCLOSED BY '"';

-- Create table --
create table ItemCategory (
	ItemID varchar(10) not null,
	Category varchar(40) not null,
	primary key (ItemID, Category)
);

-- Load location-info.csv into table --
LOAD DATA LOCAL INFILE '~/shared/project2/CS144-Part2/item-category.csv' 
INTO TABLE ItemCategory FIELDS TERMINATED BY '\t' OPTIONALLY ENCLOSED BY '"';

-- Create table --
create table Sellers (
	UserID varchar(30) not null,
	SellerRating int not null,
	primary key (UserID)
);

-- Load location-info.csv into table --
LOAD DATA LOCAL INFILE '~/shared/project2/CS144-Part2/sellers.csv' 
INTO TABLE Sellers FIELDS TERMINATED BY '\t' OPTIONALLY ENCLOSED BY '"';

-- Create table --
create table Bidders (
	UserID varchar(30) not null,
	BidderRating int not null,
	Location varchar(50),
	Country varchar(20),
	primary key (UserID)
);

-- Load location-info.csv into table --
LOAD DATA LOCAL INFILE '~/shared/project2/CS144-Part2/bidders.csv' 
INTO TABLE Bidders FIELDS TERMINATED BY '\t' OPTIONALLY ENCLOSED BY '"';

-- Create table --
create table Bids (
	ItemID varchar(10) not null,
	UserID varchar(30) not null,
	Time timestamp not null,
	Amount decimal(8,2) not null,
	primary key (ItemID, UserID, Time)
);

-- Load location-info.csv into table --
LOAD DATA LOCAL INFILE '~/shared/project2/CS144-Part2/bids.csv' 
INTO TABLE Bids FIELDS TERMINATED BY '\t' OPTIONALLY ENCLOSED BY '"';
