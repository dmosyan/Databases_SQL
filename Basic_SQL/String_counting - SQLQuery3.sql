
CREATE TABLE strs
(
    str_ VARCHAR(20)
);


CREATE TABLE final_data
(
    letter                VARCHAR(20),
	total                 int,
	occurance             int,
	max_occurance         int,
	max_occurance_reached int
);


INSERT INTO strs(str_)
VALUES('aa'),
      ('aaaa'),
      ('aab'),
      ('abaaba'),
      ('bbbbb');


INSERT INTO final_data(letter,total,occurance,max_occurance,max_occurance_reached)

SELECT DISTINCT tb1.letter,tb2.Total,tb3.occurance,tb4.max_occurance,tb5.max_occurance_reached FROM
(SELECT 'a' AS letter FROM  strs ) as tb1
LEFT JOIN (SELECT 'a' AS letter, SUM(LEN(str_)-LEN(REPLACE(str_,'a',''))) AS Total FROM strs) AS tb2
ON tb1.letter=tb2.letter
LEFT JOIN (SELECT 'a' AS letter ,COUNT(str_) AS occurance FROM strs WHERE CHARINDEX('a',str_)>0) AS tb3
ON tb2.letter=tb3.letter
LEFT JOIN (SELECT 'a' AS letter, MAX(LEN(str_)-LEN(REPLACE(str_,'a',''))) as max_occurance FROM strs) AS tb4
ON tb3.letter=tb4.letter
LEFT JOIN (SELECT 'a' AS letter ,count(str_) AS max_occurance_reached FROM strs WHERE (LEN(str_)-LEN(REPLACE(str_,'a',''))) in (SELECT MAX(LEN(str_)-LEN(REPLACE(str_,'a',''))) FROM strs)) AS tb5
ON tb4.letter=tb5.letter;

INSERT INTO final_data(letter,total,occurance,max_occurance,max_occurance_reached)

SELECT DISTINCT tb1.letter,tb2.Total,tb3.occurance,tb4.max_occurance,tb5.max_occurance_reached FROM
(SELECT 'b' AS letter FROM  strs ) AS tb1
LEFT JOIN (SELECT 'b' AS letter, sum(LEN(str_)-LEN(REPLACE(str_,'b',''))) AS Total FROM strs) AS tb2
ON tb1.letter=tb2.letter
LEFT JOIN (SELECT 'b' AS letter ,count(str_) AS occurance FROM strs WHERE CHARINDEX('b',str_)>0) AS tb3
ON tb2.letter=tb3.letter
LEFT JOIN (SELECT 'b' AS letter, MAX(LEN(str_)-LEN(REPLACE(str_,'b',''))) AS max_occurance FROM strs) AS tb4
ON tb3.letter=tb4.letter
LEFT JOIN (SELECT 'b' AS letter ,count(str_) AS max_occurance_reached FROM strs WHERE (LEN(str_)-LEN(REPLACE(str_,'b',''))) 
in (SELECT MAX(LEN(str_)-LEN(REPLACE(str_,'b',''))) FROM strs)) as tb5
ON tb4.letter=tb5.letter;

SELECT letter,total,occurance,max_occurance,max_occurance_reached FROM final_data;



