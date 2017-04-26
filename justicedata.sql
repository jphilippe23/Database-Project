CREATE TABLE justice (
    name VARCHAR(33) ,
    yrnom INT,
    posit VARCHAR(8) ,
    id VARCHAR(37) ,
    biryear INT,
    birthst VARCHAR(8) ,
    race VARCHAR(15) ,
    gender VARCHAR(6) ,
    stnom VARCHAR(8) ,
    parnom VARCHAR(8) ,
    presname VARCHAR(27) ,
    serve VARCHAR(8) ,
    dateserb VARCHAR(34) ,
    datesere VARCHAR(42)
);

\COPY justice FROM 'justicesdata.csv' WITH DELIMITER ',' CSV;
