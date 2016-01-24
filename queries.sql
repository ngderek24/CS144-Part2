-- 1 done --
select count(*) from (select UserID from Sellers union select UserID from Bidders) as Users;

-- 2 off by 1 --
select count(*) from Items where Location = "New York";

-- 3 done --
select count(*) from (select * from ItemCategory group by ItemID having count(*) = 4) as T;

-- 4 --


-- 5 done --
select count(*) from Sellers where SellerRating > 1000;

-- 6 off -- 
select count(*) from Sellers s, Bidders b where s.UserID = b.UserID;

