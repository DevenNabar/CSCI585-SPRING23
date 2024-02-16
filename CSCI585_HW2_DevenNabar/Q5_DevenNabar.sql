CREATE TABLE User5 (
  userID int PRIMARY KEY,
  username varchar(255),
  email varchar(255),
  age int,
  address varchar(255)
);
INSERT INTO User5(userID,username,email,address,age) VALUES (1, 'Alexis Black', 'ramosjeremy@example.com','1513 Connie Mills Suite 705
East Jesusbury, FL 71756',69);
INSERT INTO User5(userID,username,email,address,age) VALUES (2, 'Kevin Wilson', 'asantos@example.com','05776 Ricky Prairie Suite 076
Osbornbury, MA 79774',59);
INSERT INTO User5(userID,username,email,address,age) VALUES (3, 'Ashley Nelson', 'maxwellross@example.org','607 Luke Gateway Apt. 878
Lopezton, RI 93155',90);
INSERT INTO User5(userID,username,email,address,age) VALUES (4, 'Alexander Oliver', 'ohicks@example.net','62619 Nicole Mission Suite 855
Lake Rachelchester, MS 19519',44);
INSERT INTO User5(userID,username,email,address,age) VALUES (5, 'Whitney Atkinson', 'kcollins@example.com','163 Joann Ferry Suite 751
Bryanbury, VT 81591',20);
INSERT INTO User5(userID,username,email,address,age) VALUES (6, 'Matthew Guerra', 'kathleen39@example.org','978 Gary Villages Apt. 805
Patrickfurt, WY 83550',78);
INSERT INTO User5(userID,username,email,address,age) VALUES (7, 'Lindsey Lewis', 'benjamin59@example.com','98190 Wall Meadows
New Susan, OH 28499',28);
INSERT INTO User5(userID,username,email,address,age) VALUES (8, 'Calvin Reid', 'yholder@example.org','PSC 9177, Box 0556
APO AP 60343',14);
INSERT INTO User5(userID,username,email,address,age) VALUES (9, 'Aaron Liu', 'matthew47@example.net','98367 Christine Mission Apt. 405
Loganland, MS 81660',87);
INSERT INTO User5(userID,username,email,address,age) VALUES (10, 'Randy Barton', 'angelmitchell@example.net','63097 Goodman Crest
New Tara, NH 88059',53);

--CREATING THE CHANNEL TABLE
CREATE TABLE channel5(
  channel_id int PRIMARY KEY,
  channel_name varchar(255),
  userID int,
  CONSTRAINT user_id_fk_5 FOREIGN KEY
    (userID) REFERENCES User5(userID)
  );
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (1,'channel_name17',7);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (2,'channel_name10',1);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (3,'channel_name16',3);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (4,'channel_name21',3);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (5,'channel_name20',8);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (6,'channel_name24',4);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (7,'channel_name12',5);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (8,'channel_name24',2);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (9,'channel_name9',10);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (10,'channel_name11',5);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (11,'channel_name9',6);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (12,'channel_name25',1);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (13,'channel_name25',3);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (14,'channel_name10',6);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (15,'channel_name14',4);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (16,'channel_name19',2);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (17,'channel_name8',7);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (18,'channel_name11',3);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (19,'channel_name24',2);
INSERT INTO channel5(channel_id,channel_name,userID) VALUES (20,'channel_name5',4);


CREATE TABLE Videotable5
(
	video_id int PRIMARY KEY,
    name varchar(255),
    likes int,
    views int,
    channel_id int,
    CONSTRAINT chfk1 FOREIGN KEY (channel_id) REFERENCES channel5(channel_id)
);
--drop table VideoTable5
--INSERTING VALUES INTO THE VIDEO TABLE WITH NECESSARY FIELDS
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (1, 'videoHello1',106,2020,20);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (2, 'videoHello2',110,2004,4);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (3, 'videoHello3',106,2012,12);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (4, 'videoHello4',105,2009,9);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (5, 'videoHello5',103,2017,17);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (6, 'videoHello6',110,2006,6);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (7, 'videoHello7',105,2014,14);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (8, 'videoHello8',108,2008,8);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (9, 'videoHello9',109,2002,2);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (10, 'videoHello10',103,2006,6);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (11, 'videoHello11',108,2016,16);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (12, 'videoHello12',106,2015,15);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (13, 'videoHello13',111,2001,1);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (14, 'videoHello14',106,2015,15);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (15, 'videoHello15',104,2005,5);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (16, 'videoHello16',109,2004,4);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (17, 'videoHello17',106,2016,16);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (18, 'videoHello18',102,2020,20);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (19, 'videoHello19',105,2009,9);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (20, 'videoHello20',109,2012,12);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (21, 'videoHello21',106,2016,16);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (22, 'videoHello22',108,2005,5);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (23, 'videoHello23',108,2006,6);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (24, 'videoHello24',110,2001,1);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (25, 'videoHello25',104,2003,3);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (26, 'videoHello26',107,2018,18);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (27, 'videoHello27',111,2005,5);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (28, 'videoHello28',108,2009,9);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (29, 'videoHello29',102,2014,14);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (30, 'BestSongEver',102,2014,14);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (31, 'videoHello31',102,2006,6);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (32, 'videoHello32',106,2015,15);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (33, 'videoHello33',108,2019,19);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (34, 'videoHello34',106,2003,3);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (35, 'videoHello35',105,2003,3);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (36, 'videoHello36',105,2020,20);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (37, 'videoHello37',106,2019,19);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (38, 'videoHello38',109,2008,8);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (39, 'videoHello39',110,2016,16);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (40, 'videoHello40',106,2013,13);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (41, 'videoHello41',111,2004,4);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (42, 'videoHello42',105,2013,13);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (43, 'videoHello43',109,2018,18);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (44, 'videoHello44',106,2010,10);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (45, 'videoHello45',106,2007,7);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (46, 'videoHello46',106,2002,2);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (47, 'videoHello47',103,2013,13);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (48, 'videoHello48',106,2004,4);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (49, 'videoHello49',102,2008,8);
INSERT INTO Videotable5(video_id,name,likes,views,channel_id) VALUES (50, 'videoHello50',107,2013,13);

CREATE TABLE comment5(
    comment_id int PRIMARY KEY,
    video_id int,
    userID int,
    text varchar(255),
    CONSTRAINT video_fk_1 FOREIGN KEY (video_id) REFERENCES Videotable5(video_id),
    CONSTRAINT user_fk_1 FOREIGN KEY (userID) REFERENCES User5(userID)
);

INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (1,46,10,'i like this video5');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (2,28,5,'i like this video6');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (3,11,10,'i like this video7');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (4,15,1,'i like this video8');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (5,6,3,'i like this video9');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (6,37,5,'i like this video10');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (7,6,1,'i like this video11');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (8,12,7,'i like this video12');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (9,31,10,'i like this video13');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (10,26,5,'i like this video14');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (11,22,9,'i like this video15');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (12,17,3,'i like this video16');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (13,6,3,'i like this video17');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (14,22,9,'i like this video18');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (15,49,1,'i like this video19');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (16,29,9,'i like this video20');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (17,47,7,'i like this video21');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (18,49,1,'i like this video22');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (19,23,9,'i like this video23');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (20,21,2,'i like this video24');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (21,18,1,'i like this video25');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (22,2,8,'i like this video26');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (23,6,8,'i like this video27');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (24,22,6,'i like this video28');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (25,21,8,'i like this video29');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (26,24,1,'i like this video30');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (27,9,8,'i like this video31');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (28,23,1,'i like this video32');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (29,7,6,'i like this video33');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (30,16,8,'i like this video34');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (31,33,4,'i like this video35');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (32,10,6,'i like this video36');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (33,11,2,'i like this video37');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (34,41,8,'i like this video38');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (35,37,7,'i like this video39');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (36,12,4,'i like this video40');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (37,19,10,'i like this video41');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (38,28,10,'i like this video42');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (39,4,3,'i like this video43');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (40,10,1,'i like this video44');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (41,39,10,'i like this video45');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (42,45,1,'i like this video46');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (43,41,3,'i like this video47');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (44,25,9,'i like this video48');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (45,33,8,'i like this video49');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (46,21,4,'i like this video50');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (47,31,2,'i like this video51');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (48,30,4,'i like this video52');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (49,49,6,'i like this video53');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (50,50,3,'i like this video54');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (51,20,3,'i like this video55');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (52,39,9,'i like this video56');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (53,43,9,'i like this video57');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (54,22,8,'i like this video58');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (55,45,7,'i like this video59');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (56,21,10,'i like this video60');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (57,30,4,'i like this video61');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (58,42,7,'i like this video62');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (59,39,4,'i like this video63');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (60,27,6,'i like this video64');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (61,3,4,'i like this video65');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (62,29,2,'i like this video66');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (63,1,10,'i like this video67');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (64,17,5,'i like this video68');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (65,18,5,'i like this video69');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (66,6,4,'i like this video70');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (67,21,2,'i like this video71');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (68,8,8,'i like this video72');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (69,41,9,'i like this video73');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (70,8,10,'i like this video74');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (71,1,10,'i like this video75');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (72,9,9,'i like this video76');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (73,46,4,'i like this video77');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (74,30,7,'i like this video78');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (75,33,1,'i like this video79');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (76,31,1,'i like this video80');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (77,38,7,'i like this video81');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (78,15,2,'i like this video82');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (79,7,1,'i like this video83');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (80,43,6,'i like this video84');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (81,21,7,'i like this video85');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (82,36,2,'i like this video86');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (83,35,10,'i like this video87');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (84,16,8,'i like this video88');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (85,15,3,'i like this video89');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (86,28,4,'i like this video90');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (87,20,6,'i like this video91');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (88,17,9,'i like this video92');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (89,13,8,'i like this video93');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (90,50,1,'i like this video94');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (91,41,10,'i like this video95');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (92,36,2,'i like this video96');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (93,28,8,'i like this video97');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (94,50,3,'i like this video98');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (95,24,7,'i like this video99');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (96,3,1,'i like this video100');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (97,42,7,'i like this video101');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (98,39,7,'i like this video102');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (99,48,2,'i like this video103');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (100,43,1,'i like this video104');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (101,45,10,'i like this video105');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (102,43,9,'i like this video106');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (103,47,6,'i like this video107');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (104,24,2,'i like this video108');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (105,32,8,'i like this video109');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (106,40,3,'i like this video110');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (107,35,7,'i like this video111');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (108,34,9,'i like this video112');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (109,4,3,'i like this video113');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (110,46,8,'i like this video114');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (111,27,7,'i like this video115');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (112,50,3,'i like this video116');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (113,33,2,'i like this video117');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (114,26,4,'i like this video118');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (115,20,5,'i like this video119');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (116,12,6,'i like this video120');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (117,22,1,'i like this video121');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (118,42,9,'i like this video122');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (119,14,8,'i like this video123');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (120,11,1,'i like this video124');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (121,42,1,'i like this video125');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (122,36,4,'i like this video126');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (123,35,2,'i like this video127');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (124,20,9,'i like this video128');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (125,6,6,'i like this video129');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (126,37,5,'i like this video130');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (127,24,8,'i like this video131');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (128,46,5,'i like this video132');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (129,5,7,'i like this video133');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (130,22,4,'i like this video134');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (131,31,10,'i like this video135');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (132,33,9,'i like this video136');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (133,49,3,'i like this video137');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (134,24,8,'i like this video138');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (135,13,8,'i like this video139');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (136,4,3,'i like this video140');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (137,27,3,'i like this video141');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (138,49,8,'i like this video142');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (139,19,3,'i like this video143');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (140,29,4,'i like this video144');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (141,47,8,'i like this video145');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (142,17,10,'i like this video146');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (143,43,1,'i like this video147');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (144,1,2,'i like this video148');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (145,19,10,'i like this video149');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (146,8,9,'i like this video150');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (147,16,3,'i like this video151');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (148,28,2,'i like this video152');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (149,45,8,'i like this video153');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (150,50,8,'i like this video154');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (151,39,1,'i like this video155');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (152,19,7,'i like this video156');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (153,21,5,'i like this video157');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (154,20,6,'i like this video158');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (155,35,6,'i like this video159');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (156,46,6,'i like this video160');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (157,1,7,'i like this video161');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (158,25,8,'i like this video162');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (159,3,9,'i like this video163');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (160,28,7,'i like this video164');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (161,46,2,'i like this video165');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (162,47,3,'i like this video166');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (163,45,10,'i like this video167');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (164,9,6,'i like this video168');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (165,36,6,'i like this video169');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (166,26,10,'i like this video170');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (167,32,8,'i like this video171');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (168,27,7,'i like this video172');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (169,41,7,'i like this video173');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (170,46,3,'i like this video174');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (171,20,4,'i like this video175');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (172,35,9,'i like this video176');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (173,41,8,'i like this video177');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (174,36,2,'i like this video178');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (175,17,1,'i like this video179');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (176,44,2,'i like this video180');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (177,37,5,'i like this video181');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (178,39,2,'i like this video182');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (179,29,9,'i like this video183');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (180,42,6,'i like this video184');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (181,49,1,'i like this video185');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (182,17,4,'i like this video186');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (183,34,8,'i like this video187');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (184,9,4,'i like this video188');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (185,7,5,'i like this video189');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (186,12,3,'i like this video190');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (187,16,4,'i like this video191');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (188,18,8,'i like this video192');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (189,21,5,'i like this video193');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (190,10,2,'i like this video194');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (191,6,5,'i like this video195');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (192,48,8,'i like this video196');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (193,40,3,'i like this video197');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (194,30,1,'i like this video198');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (195,30,10,'i like this video199');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (196,8,5,'i like this video200');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (197,26,2,'i like this video201');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (198,4,3,'i like this video202');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (199,6,1,'i like this video203');
INSERT INTO comment5(comment_id,video_id,userID,text) VALUES (200,17,8,'i like this video204');

CREATE TABLE uservideo5(
  userID int,
  video_id int,
  CONSTRAINT pkuv3 PRIMARY KEY (userID,video_id),
  CONSTRAINT useriduv1 FOREIGN KEY (userID) REFERENCES User5(userID),
  CONSTRAINT videoiduv2 FOREIGN KEY (video_id) REFERENCES Videotable5(video_id)
);

INSERT INTO uservideo5(userID,video_id) VALUES (1,5);
INSERT INTO uservideo5(userID,video_id) VALUES (10,40);
INSERT INTO uservideo5(userID,video_id) VALUES (5,37);
INSERT INTO uservideo5(userID,video_id) VALUES (6,42);
INSERT INTO uservideo5(userID,video_id) VALUES (6,30);
INSERT INTO uservideo5(userID,video_id) VALUES (3,32);
INSERT INTO uservideo5(userID,video_id) VALUES (9,40);
INSERT INTO uservideo5(userID,video_id) VALUES (1,21);
INSERT INTO uservideo5(userID,video_id) VALUES (2,6);
INSERT INTO uservideo5(userID,video_id) VALUES (2,13);
INSERT INTO uservideo5(userID,video_id) VALUES (3,7);
INSERT INTO uservideo5(userID,video_id) VALUES (6,29);
INSERT INTO uservideo5(userID,video_id) VALUES (6,8);
INSERT INTO uservideo5(userID,video_id) VALUES (2,13);
INSERT INTO uservideo5(userID,video_id) VALUES (6,9);
INSERT INTO uservideo5(userID,video_id) VALUES (4,14);
INSERT INTO uservideo5(userID,video_id) VALUES (1,1);
INSERT INTO uservideo5(userID,video_id) VALUES (9,4);
INSERT INTO uservideo5(userID,video_id) VALUES (7,40);
INSERT INTO uservideo5(userID,video_id) VALUES (8,2);
INSERT INTO uservideo5(userID,video_id) VALUES (8,8);
INSERT INTO uservideo5(userID,video_id) VALUES (5,9);
INSERT INTO uservideo5(userID,video_id) VALUES (8,31);
INSERT INTO uservideo5(userID,video_id) VALUES (7,49);
INSERT INTO uservideo5(userID,video_id) VALUES (7,10);
INSERT INTO uservideo5(userID,video_id) VALUES (2,13);
INSERT INTO uservideo5(userID,video_id) VALUES (3,15);
INSERT INTO uservideo5(userID,video_id) VALUES (3,45);
INSERT INTO uservideo5(userID,video_id) VALUES (9,33);
INSERT INTO uservideo5(userID,video_id) VALUES (7,45);
INSERT INTO uservideo5(userID,video_id) VALUES (4,28);
INSERT INTO uservideo5(userID,video_id) VALUES (4,30);
INSERT INTO uservideo5(userID,video_id) VALUES (7,20);
INSERT INTO uservideo5(userID,video_id) VALUES (5,34);
INSERT INTO uservideo5(userID,video_id) VALUES (7,42);
INSERT INTO uservideo5(userID,video_id) VALUES (1,13);
INSERT INTO uservideo5(userID,video_id) VALUES (8,23);
INSERT INTO uservideo5(userID,video_id) VALUES (6,14);
INSERT INTO uservideo5(userID,video_id) VALUES (5,10);
INSERT INTO uservideo5(userID,video_id) VALUES (5,15);
INSERT INTO uservideo5(userID,video_id) VALUES (9,48);
INSERT INTO uservideo5(userID,video_id) VALUES (5,20);
INSERT INTO uservideo5(userID,video_id) VALUES (2,44);
INSERT INTO uservideo5(userID,video_id) VALUES (9,40);
INSERT INTO uservideo5(userID,video_id) VALUES (2,15);
INSERT INTO uservideo5(userID,video_id) VALUES (5,27);
INSERT INTO uservideo5(userID,video_id) VALUES (10,31);
INSERT INTO uservideo5(userID,video_id) VALUES (1,20);
INSERT INTO uservideo5(userID,video_id) VALUES (10,1);
INSERT INTO uservideo5(userID,video_id) VALUES (4,48);
INSERT INTO uservideo5(userID,video_id) VALUES (8,19);
INSERT INTO uservideo5(userID,video_id) VALUES (1,28);
INSERT INTO uservideo5(userID,video_id) VALUES (10,28);
INSERT INTO uservideo5(userID,video_id) VALUES (2,21);
INSERT INTO uservideo5(userID,video_id) VALUES (9,27);
INSERT INTO uservideo5(userID,video_id) VALUES (5,48);
INSERT INTO uservideo5(userID,video_id) VALUES (4,13);
INSERT INTO uservideo5(userID,video_id) VALUES (5,32);
INSERT INTO uservideo5(userID,video_id) VALUES (6,18);
INSERT INTO uservideo5(userID,video_id) VALUES (4,47);
--drop table uservideo5

UPDATE User5 SET username = 'Taylor Swift' WHERE userID = 6;  
select * from User5;

SELECT MAX(u.age), MIN(u.age), v.name
from uservideo5 uv
         join User5 u on u.userID = uv.userID
         join Videotable5 v on uv.video_id = v.video_id
where uv.video_id IN (SELECT v.video_id
from Videotable5 v
join channel5 c on v.channel_id = c.channel_id
join User5 u on c.userID = u.userID
join comment5 co on co.video_id = v.video_id
where u.username = 'Taylor Swift'
group by v.video_id
having COUNT(*) = (SELECT MAX(noofcomments)
from (SELECT video_id, COUNT(*) as noofcomments
FROM comment5
where video_id IN (SELECT v.video_id
FROM Videotable5 v
join channel5 c on v.channel_id = c.channel_id
join User5 u on c.userID = u.userID
where u.username = 'Taylor Swift')
group by video_id)))
group by v.name;


--Here, The first I plan to update the username to "Taylor Swift" for the user with userID = 6 in the User5 table.
--The second part of query selects all rows from the User5 table to display the updated username.
--The third part of the query retrieves the maximum and minimum age of users who have commented on videos associated with the "Taylor Swift" username, as well as the names of the videos themselves.
--The query uses JOIN operations to combine the uservideo5, User5, and Videotable5 tables based on their respective ID fields. It then selects the maximum and minimum age of users who have commented on videos associated with the "Taylor Swift" username, as well as the names of the videos themselves.