--get a justice's voting history, user inputs justice
SELECT Justice.name, CourtCase.name, Voted.vote
FROM Justice, CourtCase, Voted
WHERE Justice.jid = Voted.jid
AND Voted.caseid = CourtCase.caseid
AND Justice.name = 'Antonin Scalia' --could be a different user input
;

--get a specific case's votes, user inputs case name
SELECT Justice.name, Voted.vote
FROM Justice, CourtCase, Voted
WHERE Justice.jid = Voted.jid
AND CourtCase.caseid = Voted.caseid
AND CourtCase.name = 'Citizens United v. FEC' --could be different user input
;

--get appointees by specific President, user inputs president name
SELECT Justice.name
FROM Justice, President
WHERE Justice.pid_appointed = President.pid
AND President.name = 'Ronald Reagan' --could be different user input
;

--get all justices who served under a specific chief justice, user inputs justice name
SELECT Justice.name
FROM Justice, ServedOn, Court
WHERE Justice.jid = ServedOn.jid
AND ServedOn.cid = Court.cid
AND Court.chief_justice_id IN
(SELECT Justice.jid FROM Justice WHERE Justice.name = 'John Roberts') --could be different user input
;

--get cases presided over by a specific court, user inputs chief justice name
SELECT CourtCase.name
FROM CourtCase, Court
WHERE CourtCase.courtid = Court.cid
AND Court.chief_justice_id IN
(SELECT Justice.jid FROM Justice WHERE Justice.name = 'William Rehnquist') --could be different user input
;
