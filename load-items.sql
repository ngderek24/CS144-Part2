-- Create table --
create table Items (
	ItemID varchar(10) not null,
	Name varchar(200) not null,
	Currently decimal(8, 2) not null,
	Buy_Price decimal(8, 2),
	First_Bid decimal(8, 2) not null,
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
LOAD DATA LOCAL INFILE '~/shared/project2/CS144-Part2/items.csv' INTO TABLE Items FIELDS TERMINATED BY '\t' OPTIONALLY ENCLOSED BY '"';