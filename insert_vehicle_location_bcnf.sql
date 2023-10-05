CREATE TABLE vehicle_location_bcnf (
  "Vehicle Location" VARCHAR(40) NOT NULL,
  "Postal Code" int NOT NULL,
  PRIMARY KEY ("Vehicle Location")
);
INSERT INTO vehicle_location_bcnf ("Vehicle Location", "Postal Code")
SELECT "Vehicle Location", "Postal Code"
FROM vehicle_location;