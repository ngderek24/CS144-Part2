Part B

1.

1) Items (ItemID, Name, Currently, Buy_Price, First_Bid, Number_of_Bids, Started, Ends, UserID, Description, Location, Country)
key: ItemID

2) ItemLocation (Location, Country, Latitude, Longitude) 
key: (Location, Country)

3) ItemCategory (ItemID, Category)
key: (ItemID, Category)

4) Bids (ItemID, UserID, Time, Amount)
key: (ItemID, UserID, Time)

5) Users (UserID, Seller_Rating, Bidder_Rating, Location, Country)
key: UserID

2.

3. Yes, they are in Boyce-Codd Normal Form. 

4. Yes, they are in Fourth Normal Form.