--Done on Live SQL

CREATE TABLE User2 (   
    User_id int NOT NULL,   
    User_name varchar(255) NOT NULL,   
    Email varchar(255),   
    Address varchar(255),  
    Age int,   
    PRIMARY KEY (User_id)   
) ;

INSERT INTO User2(User_id,User_name,Email,Address,Age) VALUES (101, 'Deven', 'dnab@gmail.com','LA',48) ;

INSERT INTO User2(User_id,User_name,Email,Address,Age) VALUES (102, 'Isha', 'ishab@gmail.com','NY',78);

INSERT INTO User2(User_id,User_name,Email,Address,Age) VALUES (103, 'Akshay', 'akpad@gmail.com','NJ',13);

INSERT INTO User2(User_id,User_name,Email,Address,Age) VALUES (104, 'Arya', 'aryp@gmail.com','MD',34);

INSERT INTO User2(User_id,User_name,Email,Address,Age) VALUES (105, 'Jai', 'jaidolw@gmail.com','SF',21);

INSERT INTO User2(User_id,User_name,Email,Address,Age) VALUES (106, 'Swapnil', 'swapnilk@gmail.com','SD',24);


CREATE TABLE Channel2 (  
    Channel_name varchar(255) NOT NULL,  
    Creation_date varchar(255),   
    User_id int,  
    PRIMARY KEY (Channel_name)  
) ;

  ALTER TABLE Channel2 ADD CONSTRAINT User_id  
  FOREIGN KEY (User_id) REFERENCES User2 (User_id);

INSERT INTO Channel2(Channel_name, Creation_date,User_id) VALUES ('Marvel Entertainment videos', '2-3-23', 102);

INSERT INTO Channel2(Channel_name, Creation_date,User_id) VALUES ('Pewdiepie', '7-5-23', 103);

INSERT INTO Channel2(Channel_name, Creation_date,User_id) VALUES ('Markiplier', '1-4-22', 105);

INSERT INTO Channel2(Channel_name, Creation_date,User_id) VALUES ('Veritasium', '19-5-22', 102);

INSERT INTO Channel2(Channel_name, Creation_date,User_id) VALUES ('Gymhacks', '7-8-23', 101);


CREATE TABLE Video2 (  
    Channel_name varchar(255) NOT NULL,  
    Video_url varchar(255) NOT NULL, 
    Title varchar(100) NOT NULL, 
    Likes int, 
    Views int, 
     PRIMARY KEY (Video_url)  
) ;

-- this constraint over here makes the Channel_name from the video table the foreign key, linking to the Channel_name from the channel table
ALTER TABLE Video2 ADD CONSTRAINT video2  
  FOREIGN KEY (Channel_name) REFERENCES Channel2 (Channel_name) ;


INSERT INTO Video2(Channel_name,Video_url,Title,Likes,Views) VALUES ('Marvel Entertainment videos', 'www.ytube.com/rt', 'Infinity War',100,3000);

INSERT INTO Video2(Channel_name,Video_url,Title,Likes,Views) VALUES ('Pewdiepie', 'www.ytube.com/hjj', 'War',400,7000);

INSERT INTO Video2(Channel_name,Video_url,Title,Likes,Views) VALUES ('Veritasium', 'www.ytube.com/kj', 'Run',893,7390);

INSERT INTO Video2(Channel_name,Video_url,Title,Likes,Views) VALUES ('Marvel Entertainment videos', 'www.ytube.com/hih', 'Capcom',1990,2000);

INSERT INTO Video2(Channel_name,Video_url,Title,Likes,Views) VALUES ('Gymhacks', 'www.ytube.com/hjas', 'Barbell',89,508);


SELECT v.Title, c.Channel_name, CAST(v.Likes AS FLOAT)/v.Views AS like_to_view_ratio 
FROM Video2 v 
JOIN Channel2 c ON v.Channel_name = c.Channel_name 
WHERE c.Channel_name LIKE '%Marvel Entertainment%' 
ORDER BY UPPER(v.title) ASC

--Here, This SQL query retrieves the video title, channel name, and like-to-view ratio for all videos uploaded to a channel that contains the phrase "Marvel Entertainment" in its name. The results are sorted in ascending order by the title of the video (in uppercase)
--The query uses a JOIN to combine the Video2 and Channel2 tables based on the Channel_name field. It then selects the video title, channel name, and the calculated like-to-view ratio for each video using the CAST function to ensure that the ratio is calculated as a float value.
--The WHERE clause is used to filter the results to only include videos uploaded to a channel that contains the phrase "Marvel Entertainment" in its name. The LIKE operator is used with the wildcard character '%' to match any channel name that contains the phrase.
--Finally, the results are sorted in ascending order by the title of the video, converted to uppercase using the UPPER function to ensure that the sorting is case-insensitive.