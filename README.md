# Electric-Vehicle-Database-modelling

## Workflow

1. Data cleaning of csv file is performed in Jupyter Notebook using python.
2. Following Function dependencies are identified after abserving all column names.
  a. Model Year, make, Model -> Electric Range
  b. County, State, City -> Postal Code
  c. DOLVehicle ID -> VIN (1-10),County,City,State,Postal Code,Model,Year,Make,DOL Vehicle ID,Vehicle Location
  d. Vehicle Location -> postal code
3. Entity relationship diagram is generated as per above functional dependicies and foreign keys are determined.
4. New relations/tables as per the ER diagram are generated and BCNF normalization is performed.
5. UPDATE, INSERT and DELETE operations are performed into the BCNF database
6. Cost reduction measures are implemented to to enable efficient updates to Normalized database.
7. Above processes can help in efficient query operations in a database and benifit electric vehicle customers and manufacturers.
    

## Database description
The csv file has following column names:
VIN (1-10),County,City,State,Postal Code,Model,Year,Make,Model,Electric Vehicle Type,Clean Alternative Fuel Vehicle (CAFV) Eligibility,Electric Range,	Base MSRP	Legislative District,DOL Vehicle ID,Vehicle Location,Electric Utility and 2020 Census Tract

3 sub tables were converted into BCNF form where the determinants are candidate keys. The tables were checked for redundancies and no redundancy was found.		
ELectric_Range_bcnf
 The table contains following columns:
Model Year
Make
Model
Electric Range
**This table is used to study electric range of vehicles based on their characteristics.**
	
B.  postal_code_bcnf
The table contains following columns:
County
State
City
Location
VIN
Postal Code
**This table is used to identify postal codes based on City, State, Location and VIN of a vehicle.**

C.  dol_vehicle_bcnf
The table contains following columns:
VIN
Vehicle Location
County
City
State
Postal Code
DOL Vehicle ID
**This table is used to identify DOL Vehicle ID based on County, City, State, Location, Postal Code and VIN of a vehicle.**

## References
1. Data source: data.wa.gov
