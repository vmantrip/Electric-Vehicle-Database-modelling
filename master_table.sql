CREATE TABLE Public."Production_data"(
    "VIN (1-10)" varchar(20), 
    County varchar(20), 
    City varchar(70), 
    State varchar(20), 
    "Postal Code" int, 
    "Model Year" int, 
    Make varchar(20), 
    Model varchar(50), 
    "Electric Vehicle Type" varchar(50), 
    "Clean Alternative Fuel Vehicle (CAFV) Eligibility" varchar(80), 
    "Electric Range" int NULL, 
    "Base MSRP" int, 
    "Legislative District" int NULL, 
    "DOL Vehicle ID" int, 
    "Vehicle Location" varchar(40) NULL, 
    "Electric Utility" varchar(142) NULL, 
    "2020 Census Tract" bigint
);