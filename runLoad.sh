#!/bin/bash

# Run the drop.sql batch file to drop existing tables
# Inside the drop.sql, you sould check whether the table exists. Drop them ONLY if they exists.
mysql TEST < drop.sql

# Run the create.sql batch file to create the database and tables
mysql TEST < create.sql

# Compile and run the parser to generate the appropriate load files
ant
ant run-all

# If the Java code does not handle duplicate removal, do this now
sort items.csv | uniq > items-uniq.csv
sort location-info.csv | uniq > location-info-uniq.csv
sort item-category.csv | uniq > item-category-uniq.csv
sort sellers.csv | uniq > sellers-uniq.csv
sort bidders.csv | uniq > bidders-uniq.csv
sort bids.csv | uniq > bids-uniq.csv

# Run the load.sql batch file to load the data
mysql TEST < load.sql

# Remove all temporary files
rm *.csv