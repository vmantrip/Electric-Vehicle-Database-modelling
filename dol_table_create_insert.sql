CREATE TABLE dol_data_bcnf (
  "DOL Vehicle ID" int NOT NULL,
  "VIN (1-10)" VARCHAR(20) NOT NULL,
  "Vehicle Location" VARCHAR(40) NOT NULL,
  "County" VARCHAR(20) NOT NULL,
  "City" VARCHAR(70) NOT NULL,
  "State" VARCHAR(20) NOT NULL,
  "Postal Code" int NOT NULL,
  PRIMARY KEY ("DOL Vehicle ID")
);

INSERT INTO dol_data_bcnf ("DOL Vehicle ID", "VIN (1-10)", "Vehicle Location", "County", "City", "State", "Postal Code")
SELECT DISTINCT "DOL Vehicle ID", "VIN (1-10)", "Vehicle Location", "county", "city", "state", "Postal Code"
FROM dol_table;

