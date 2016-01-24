-- 1 done --
select count(*) from 
(select UserID from Sellers union select UserID from Bidders) as Users;

-- 2 off by 1 --
select count(*) from Items 
where binary Location = "New York";

-- 3 done --
select count(*) from 
(select * from ItemCategory 
	group by ItemID 
	having count(*) = 4) as T;

-- 4 done --
select ItemID from Items 
where Ends > '2001-12-20 00:00:01'
and Number_of_Bids > 0
and Currently >= all 
(select Currently from Items 
	where Ends > '2001-12-20 00:00:01' 
	and Number_of_Bids > 0);

-- 5 done --
select count(*) from Sellers 
where SellerRating > 1000;

-- 6 off -- 
select count(*) from Sellers s, Bidders b 
where s.UserID = b.UserID;

-- 7 done --
select count(*) from 
(select Category from Items i, ItemCategory c 
	where i.ItemID = c.ItemID 
	and Number_of_Bids > 0 
	and Currently > 100 
	group by Category) as T;
