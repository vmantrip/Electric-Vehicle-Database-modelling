INSERT INTO electric_range ("Model Year", Make, Model, "Electric Range")
SELECT "Model Year", Make, Model, "Electric Range"
FROM public."Production_data";