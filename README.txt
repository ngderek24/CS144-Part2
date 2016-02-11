Part B

1.

1) Items (ItemID, Name, Currently, Buy_Price, First_Bid, Number_of_Bids, Location, Country, Latitude, Longitude, Started, Ends, UserID, Description)
key: ItemID

2) ItemCategory (ItemID, Category)
key: (ItemID, Category)

3) Bids (ItemID, UserID, Time, Amount)
key: (ItemID, UserID, Time)

4) Bidders (UserID, Bidder_Rating, Location, Country)
key: UserID

5) Sellers (UserID, Seller_Rating)
key: UserID

2. Our relations do not contain any completely nontrivial functional dependencies that do not effectively specify keys.

3. Yes, they are in Boyce-Codd Normal Form. 

4. Yes, they are in Fourth Normal Form.