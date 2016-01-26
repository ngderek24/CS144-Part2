-- 1 --
select count(*) from 
(select UserID from Sellers union select UserID from Bidders) as Users;

-- 2 --
select count(*) from Items 
where binary Location = "New York";

-- 3 --
select count(*) from 
(select * from ItemCategory 
	group by ItemID 
	having count(*) = 4) as T;

-- 4 --
select ItemID from Items 
where Ends > '2001-12-20 00:00:01'
and Number_of_Bids > 0
and Currently >= all 
(select Currently from Items 
	where Ends > '2001-12-20 00:00:01' 
	and Number_of_Bids > 0);

-- 5 --
select count(*) from Sellers 
where SellerRating > 1000;

-- 6 -- 
select count(*) from Sellers s, Bidders b 
where s.UserID = b.UserID;

-- 7 --
select count(*) from 
(select Category from Items i, ItemCategory c 
	where i.ItemID = c.ItemID 
	and Number_of_Bids > 0 
	and Currently > 100 
	group by Category) as T;
