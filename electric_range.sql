CREATE TABLE Electric_Range (
    "Model Year" integer,
    Make varchar(20), 
    Model varchar(50),
    "Electric Range" integer NULL,
    PRIMARY KEY ("Model Year", Make, Model)
);