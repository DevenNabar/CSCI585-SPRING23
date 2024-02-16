--Done on Live SQL

Create table Video(
  video_id int Not Null Primary Key,
  name varchar(255) Not Null
);

Create table Sponsor(
  Sponsor_id int Primary Key,
  Sponsor_name varchar(255) Not Null,
  Sponsor_phone number (10)
);

Create table SponsorshipDetail(
  Sponsor_id int references Sponsor(Sponsor_id),
  Video_id int references Video(Video_id),
  Sponsor_amount int Not null
);

insert into Video values (101,'Dogs');
insert into Video values (102,'Cats');
insert into Video values (103,'Horses');
insert into Video values (104,'Birds');
insert into Video values (105,'Rodents');
insert into Video values (106,'Lions');

insert into Sponsor values (1,'Disney',9078651677);
insert into Sponsor values (2,'Nestle',1789263746);
insert into Sponsor values (3,'Brilliant',7189279080);
insert into Sponsor values (4,'SquareSpace',8975674526);
insert into Sponsor values (5,'Nike',9816273564);
insert into Sponsor values (6,'Adidas',7819263890);

insert into SponsorshipDetail values (1,101,6000);
insert into SponsorshipDetail values (2,102,7000);
insert into SponsorshipDetail values (3,103,8000);
insert into SponsorshipDetail values (2,104,1000);
insert into SponsorshipDetail values (6,105,5000);
insert into SponsorshipDetail values (5,106,6000);


SELECT Sponsor.Sponsor_name, Sponsor.Sponsor_phone, SUM(SponsorshipDetail.Sponsor_amount) AS total_amount
FROM Sponsor
JOIN SponsorshipDetail ON Sponsor.Sponsor_id = SponsorshipDetail.Sponsor_id
GROUP BY Sponsor.Sponsor_name, Sponsor.Sponsor_phone
HAVING SUM(SponsorshipDetail.Sponsor_amount) = (
  SELECT MAX(total_amount)
  FROM (
    SELECT SUM(Sponsor_amount) AS total_amount
    FROM SponsorshipDetail
    GROUP BY Sponsor_id
))


--Here, I have joined the sponsor table with the video table using the bridge table SponsorDetail with it bein the joining condition in the query.
--Here, this SQL query retrieves the sponsor name, phone number, and total amount of sponsorship for each sponsor who has contributed the maximum amount among all sponsors