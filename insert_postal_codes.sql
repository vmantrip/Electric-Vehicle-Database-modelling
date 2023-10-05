DROP TABLE IF EXISTS postal_code;
CREATE TABLE postal_code (
  County VARCHAR(20) NOT NULL,
  State VARCHAR(20) NOT NULL,
  City VARCHAR(70) NOT NULL,
  "Postal Code" int
);
INSERT INTO postal_code (County, State, City, "Postal Code")
SELECT DISTINCT County, State, City, "Postal Code"
FROM public."Production_data"
WHERE County IS NOT NULL
  AND State IS NOT NULL
  AND City IS NOT NULL
  AND "Postal Code" IS NOT NULL;