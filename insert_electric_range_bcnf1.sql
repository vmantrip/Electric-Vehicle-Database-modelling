INSERT INTO Electric_Range_Table1 ("Model Year", Make, Model)
SELECT DISTINCT ON ("Model Year", Make, Model)
"Model Year", Make, Model
FROM public."Production_data";