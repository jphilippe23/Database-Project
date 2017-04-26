CREATE TABLE presidents (
    `Presidency` INT,
    `President` VARCHAR(27) CHARACTER SET utf8,
    `Took_office` VARCHAR(10) CHARACTER SET utf8,
    `Left_office` VARCHAR(10) CHARACTER SET utf8,
    `Party` VARCHAR(42) CHARACTER SET utf8,
    `Home_State` VARCHAR(13) CHARACTER SET utf8
);

CREATE TABLE justice (
    `name` VARCHAR(33) CHARACTER SET utf8,
    `yrnom` INT,
    `posit` VARCHAR(8) CHARACTER SET utf8,
    `id` VARCHAR(37) CHARACTER SET utf8,
    `biryear` INT,
    `birthst` VARCHAR(8) CHARACTER SET utf8,
    `race` VARCHAR(15) CHARACTER SET utf8,
    `gender` VARCHAR(6) CHARACTER SET utf8,
    `stnom` VARCHAR(8) CHARACTER SET utf8,
    `parnom` VARCHAR(8) CHARACTER SET utf8,
    `presname` VARCHAR(27) CHARACTER SET utf8,
    `serve` VARCHAR(8) CHARACTER SET utf8,
    `dateserb` VARCHAR(34) CHARACTER SET utf8,
    `datesere` VARCHAR(42) CHARACTER SET utf8
);

CREATE TABLE court (
    'CourtID' INT,
    'chief_justice' VARCHAR(25) CHARACTER SET utf8,
    'StartDate' VARCHAR(19) CHARACTER SET utf8,
    'EndDate' VARCHAR(19) CHARACTER SET utf8
);
