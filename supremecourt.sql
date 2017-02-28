CREATE TABLE President
(
  pid INTEGER PRIMARY KEY,
  name VARCHAR(256) NOT NULL,
  startyear INTEGER NOT NULL,
  endyear INTEGER,
  party VARCHAR(256) NOT NULL
);

CREATE TABLE Justice
(
  jid INTEGER PRIMARY KEY,
  name VARCHAR(256) NOT NULL,
  birthyear INTEGER NOT NULL,
  homestate VARCHAR(256) NOT NULL,
  gender VARCHAR(8) NOT NULL,
  leaning VARCHAR(256) NOT NULL,
  startdate VARCHAR(256) NOT NULL,
  enddate VARCHAR(256),
  pid_appointed INTEGER NOT NULL REFERENCES President(pid)
);

CREATE TABLE Court
(
  cid INTEGER PRIMARY KEY,
  chief_justice_id INTEGER NOT NULL REFERENCES Justice(jid),
  startdate VARCHAR(256) NOT NULL,
  enddate VARCHAR(256)
);

CREATE TABLE CourtCase
(
  caseid INTEGER PRIMARY KEY,
  courtid INTEGER NOT NULL,
  name VARCHAR(256) NOT NULL,
  in_favor_of VARCHAR(256) NOT NULL,
  num_winning_votes INTEGER NOT NULL,
  num_losing_votes INTEGER NOT NULL
);

CREATE TABLE Replaced
(
  oldid INTEGER NOT NULL REFERENCES Justice(jid),
  newid INTEGER NOT NULL REFERENCES Justice(jid)
);

CREATE TABLE Voted
(
  jid INTEGER NOT NULL REFERENCES Justice(jid),
  caseid INTEGER NOT NULL REFERENCES CourtCase(caseid),
  vote VARCHAR(256) NOT NULL,
  PRIMARY KEY(jid, caseid)
);

CREATE TABLE ServedOn
(
  jid INTEGER NOT NULL REFERENCES Justice(jid),
  cid INTEGER NOT NULL REFERENCES Court(cid),
  role VARCHAR(256) NOT NULL,
  PRIMARY KEY(jid, cid)
);

INSERT INTO President VALUES(37, 'Richard Nixon', 1969, 1974, 'Republican');
INSERT INTO President VALUES(38, 'Gerald Ford', 1974, 1977, 'Republican');
INSERT INTO President VALUES(39, 'Jimmy Carter', 1977, 1981, 'Democrat');
INSERT INTO President VALUES(40, 'Ronald Reagan', 1981, 1989, 'Republican');
INSERT INTO President VALUES(41, 'George H.W. Bush', 1989, 1993, 'Republican');
INSERT INTO President VALUES(42, 'Bill Clinton', 1993, 2001, 'Democrat');
INSERT INTO President VALUES(43, 'George W. Bush', 2001, 2009, 'Republican');
INSERT INTO President VALUES(44, 'Barack Obama', 2009, 2017, 'Democrat');
INSERT INTO President VALUES(45, 'Donald Trump', 2017, NULL, 'Russian');

INSERT INTO Justice VALUES(97, 'Warren E. Burger', 1907, 'Virginia', 'male', 'conservative', '19690623', '19860926', 37);
INSERT INTO Justice VALUES(98, 'Harry Blackmun', 1908, 'Minnesota', 'male', 'liberal', '19700609', '19940803', 37);
INSERT INTO Justice VALUES(99, 'Lewis Franklin Powell Jr.', 1907, 'Virginia', 'male', 'conservative', '19720107', '19870926', 37);
INSERT INTO Justice VALUES(100, 'William Rehnquist', 1924, 'Arizona', 'male', 'conservative', '19720107', '20050903', 37);
INSERT INTO Justice VALUES(101, 'John Paul Stevens', 1920, 'Illinois', 'male', 'liberal', '19751219', '20100629', 38);
INSERT INTO Justice VALUES(102, 'Sandra Day O''Connor', 1930, 'Arizona', 'female', 'moderate', '19810925', '20060131', 40);
INSERT INTO Justice VALUES(103, 'Antonin Scalia', 1936, 'Virginia', 'male', 'conservative', '19860926', '20160213', 40);
INSERT INTO Justice VALUES(104, 'Anthony Kennedy', 1936, 'California', 'male', 'moderate', '19880218', NULL, 40);
INSERT INTO Justice VALUES(105, 'David Souter', 1939, 'New Hampshire', 'male', 'liberal', '19901009', '20090629', 41);
INSERT INTO Justice VALUES(106, 'Clarence Thomas', 1948, 'Georgia', 'male', 'conservative', '19911023', NULL, 41);
INSERT INTO Justice VALUES(107, 'Ruth Bader Ginsburg', 1933, 'New York', 'female', 'liberal', '19930810', NULL, 42);
INSERT INTO Justice VALUES(108, 'Stephen Breyer', 1938, 'Massachusetts', 'male', 'liberal', '19940803', NULL, 42);
INSERT INTO Justice VALUES(109, 'John Roberts', 1955, 'Maryland', 'male', 'conservative', '20050929', NULL, 43);
INSERT INTO Justice VALUES(110, 'Samuel Alito', 1950, 'New Jersey', 'male', 'conservative', '20060131', NULL, 43);
INSERT INTO Justice VALUES(111, 'Sonia Sotomayor', 1954, 'New York', 'female', 'liberal', '20090808', NULL, 44);
INSERT INTO Justice VALUES(112, 'Elena Kagan', 1960, 'Massachusetts', 'female', 'liberal', '20100807', NULL, 44);

INSERT INTO Court VALUES(15, 97, '19690623', '19860926');
INSERT INTO Court VALUES(16, 100, '19860926', '20050903');
INSERT INTO Court VALUES(17, 109, '20050929', NULL);

INSERT INTO CourtCase VALUES(1, 17, 'Citizens United v. FEC', 'de-regulated campaign spending', 5, 4);
INSERT INTO CourtCase VALUES(2, 17, 'National Federation of Independent Business v. Sebelius', 'upheld most provisions of the ACA', 5, 4);
