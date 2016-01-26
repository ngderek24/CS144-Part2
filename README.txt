Part B

1.

1) Items (ItemID, Name, Currently, Buy_Price, First_Bid, Number_of_Bids, Location, Country, Started, Ends, UserID, Description)
key: ItemID

2) LocationInfo (Location, Country, Latitude, Longitude) 
key: (Location, Country)

3) ItemCategory (ItemID, Category)
key: (ItemID, Category)

4) Bids (ItemID, UserID, Time, Amount)
key: (ItemID, UserID, Time)

5) Bidders (UserID, Bidder_Rating, Location, Country)
key: UserID

6) Sellers (UserID, Seller_Rating)
key: UserID

2. Our relations do not contain any completely nontrivial functional dependencies that do not effectively specify keys.

3. Yes, they are in Boyce-Codd Normal Form. 

4. Yes, they are in Fourth Normal Form.