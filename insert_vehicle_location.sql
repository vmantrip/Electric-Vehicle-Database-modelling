CREATE TABLE vehicle_location (
  "Vehicle Location" VARCHAR(40) NOT NULL,
  "Postal Code" int,
  PRIMARY KEY ("Vehicle Location")
);

INSERT INTO vehicle_location ("Vehicle Location", "Postal Code")
SELECT DISTINCT "Vehicle Location", "Postal Code"
FROM public."Production_data"
WHERE "Vehicle Location" IS NOT NULL	
  AND "Postal Code" IS NOT NULL;
