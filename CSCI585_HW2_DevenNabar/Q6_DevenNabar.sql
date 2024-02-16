-- done on livesql
-- drop table User6;
CREATE TABLE User6 (
  user_ID INT PRIMARY KEY NOT NULL, 
  name VARCHAR(100), 
  email_ID VARCHAR(100), 
  address VARCHAR(50)
);

insert into User6 values(101, 'Ashay',  'Ahsay@gmail.com','IND');
insert into User6 values(102, 'Vedant', 'vdegand@gmail.com','US');
insert into User6 values(103, 'Ananya',  'haihs@example.net','SA');
insert into User6 values(104, 'Pushpa',  'pushpak@example.net','AU');
insert into User6 values(105, 'Rishabh',  'rishabhj@example.net','US');
insert into User6 values(106, 'Ruchi',  'ruchiK@gmail.net','IND');
insert into User6 values(107, 'Sagar',  'sagarnaik@gmail.org','AU');
insert into User6 values(108, 'Kalash',  'Klachan@gmail.com','US');
insert into User6 values(109, 'Emily',  'emila8@gmail.com','US');
insert into User6 values(110, 'Victor',  'Bicott@gmail.com','US');


--DROP TABLE Channel6;
CREATE TABLE Channel6 (
  channel_ID INT PRIMARY KEY,
  user_ID INT references User6(user_ID),
  channel_name VARCHAR(100),
  creation_date date
);

INSERT INTO Channel6 values(201,101,'Pewdiepie','12-Feb-2020');
INSERT INTO Channel6 values(202,102,'Racing101','11-Oct-2021');
INSERT INTO Channel6 values(203,103,'MKBHD','01-Apr-2020');
INSERT INTO Channel6 values(204,104,'Runninglog','01-Jan-2022');

-- DROP TABLE Video6;
Create TABLE Video6(
  video_ID INT PRIMARY KEY NOT NULL, 
  title VARCHAR(40), 
  channel_ID INT references Channel6(channel_ID),  
  upload_date DATE
);

insert into Video6 values(401, 'Video1', 202, '03-Jan-2023');
insert into Video6 values(402, 'Video2',202,'10-Jan-2023');
insert into Video6 values(403, 'Video3',202,'18-Jan-2023');
insert into Video6 values(404,'Video4', 202, '26-Jan-2023');

insert into Video6 values(405,'Video5', 201, '19-Jan-2023');
insert into Video6 values(406,'Video6', 203, '17-Jan-2023');
insert into Video6 values(407,'Video7', 204, '18-Jan-2023');
insert into Video6 values(408,'Video8', 203, '28-Jan-2023');

--DROP TABLE Subscription6;
Create TABLE Subscription6(
  channel_ID INT references Channel6(channel_ID),
  user_ID int references User6(user_ID)
);

insert into Subscription6 values(202, 101);
insert into Subscription6 values(202, 103);
insert into Subscription6 values(202, 104);
insert into Subscription6 values(202, 105);
insert into Subscription6 values(202, 106);
insert into Subscription6 values(202, 107);
insert into Subscription6 values(202, 108);
insert into Subscription6 values(202, 109);
insert into Subscription6 values(202, 110);

insert into Subscription6 values(204, 106);
insert into Subscription6 values(203, 102);
insert into Subscription6 values(203, 102);
insert into Subscription6 values(204, 109);
insert into Subscription6 values(201, 107);

SELECT u.name, ch.channel_name, COUNT(DISTINCT(s.user_id)) as subscriber_count
FROM 
    User6 u 
    JOIN Channel6 ch ON u.user_ID = ch.user_ID 
    JOIN Video6 v ON ch.channel_ID = v.channel_ID 
    JOIN Subscription6 s ON ch.channel_ID = s.channel_ID 
WHERE 
    u.address = 'US' 
    AND v.upload_date >= '01-Jan-2023' and v.upload_date <='31-Jan-2023'
GROUP BY u.name, ch.channel_name
HAVING COUNT(DISTINCT TO_CHAR(v.upload_date, 'IW')) = 4;

-- Here the query starts by selecting the name of the user, the name of their channel, and the number of distinct subscribers for that channel.
--It joins the User6 table with the Channel6 table on the user_ID, and then joins with the Video6 table on the channel_ID, and finally with the Subscription6 table on the channel_ID as well.
--The WHERE clause filters the results by selecting only users located in the US and videos uploaded in January 2023.
--The HAVING clause makes sure that the count of distinct upload weeks for the videos is 4, meaning that the videos were uploaded every week of the month.
--The query groups the results by user name and channel name.