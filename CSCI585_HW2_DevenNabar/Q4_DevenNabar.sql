-- Done on livesql
CREATE TABLE Video4(
  Video_id int NOT NULL PRIMARY KEY,
  Title varchar(255)
);

CREATE TABLE User4(
  User_id int NOT NULL PRIMARY KEY,
  User_name varchar(255),
  Age int
);

CREATE TABLE Comment4(
  Comment_id int NOT NULL PRIMARY KEY,
  Video_id int REFERENCES Video4(Video_id) NOT NULL,
  Commenter_id int REFERENCES User4(User_id) NOT NULL,
  Sentiment int
);
select * from Comment4;
select * from User4;
select * from Video4;
select * from Videokeywords4;


CREATE TABLE Videokeywords4(
  Video_id int REFERENCES Video4(Video_id) NOT NULL,
  keyword varchar(255)
);

INSERT INTO Video4 values (1, 'Gym training');
INSERT INTO Video4 values (2, 'Running');
INSERT INTO Video4 values (3, 'Karting');

INSERT INTO User4 values (210, 'Ashay', 29);
INSERT INTO User4 values (211, 'Vedant', 18);
INSERT INTO User4 values (212, 'Kalash', 19);

INSERT INTO Videokeywords4 values (2, 'racing');
INSERT INTO Videokeywords4 values (1, 'strong');
INSERT INTO Videokeywords4 values (3, 'first');
INSERT INTO Videokeywords4 values (2, 'feet');

INSERT INTO Comment4 values (301,2, 210, 4);
INSERT INTO Comment4 values (302,1, 212, 2);
INSERT INTO Comment4 values (303,3, 211, 9);
INSERT INTO Comment4 values (304,1, 211, 2);
INSERT INTO Comment4 values (305,1, 210, 7);
INSERT INTO Comment4 values (306,1, 212, 9);
INSERT INTO Comment4 values (307,2, 211, 3);

SELECT k.keyword, AVG(c.Sentiment) AS avg_score
FROM Videokeywords4 k
INNER JOIN Comment4 c ON k.Video_id = c.Video_id
GROUP BY k.keyword
ORDER BY avg_score DESC;

--Here, This SQL query retrieves the average sentiment score for each keyword used in the comments of videos. The results are sorted in descending order by the average sentiment score. The sentiment score is picked it from the sentiment field in video details. The videokeywords table is linked with the keywords table and the video table.
