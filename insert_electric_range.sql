INSERT INTO electric_Range ("Model Year", Make, Model, "Electric Range")
SELECT DISTINCT ON ("Model Year", Make, Model)
"Model Year", Make, Model, "Electric Range"
FROM public."Production_data"
WHERE Model IS NOT NULL;