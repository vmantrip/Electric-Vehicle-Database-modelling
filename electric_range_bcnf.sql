CREATE TABLE electric_range_bcnf (
  "Model Year" INTEGER NOT NULL,
  Make VARCHAR(50) NOT NULL,
  Model VARCHAR(50) NOT NULL,
  "Electric Range" INTEGER NOT NULL,
  PRIMARY KEY ("Model Year", Make, Model)
);
ALTER TABLE electric_range_bcnf
  ADD CONSTRAINT fk_electric_range
  FOREIGN KEY ("Model Year", Make, Model)
  REFERENCES electric_range ("Model Year", Make, Model);
INSERT INTO electric_range_bcnf ("Model Year", Make, Model, "Electric Range")
SELECT DISTINCT ON ("Model Year", Make, Model)
  "Model Year", Make, Model, "Electric Range"
FROM electric_range;