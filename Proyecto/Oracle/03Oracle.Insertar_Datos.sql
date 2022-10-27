insert into Movies values (title_id_seq.NEXTVal,'Drive',
'By day, Driver is a movie stunt driver, but by night he becomes a chauffeur for criminals. Driver´s world changes the day he meets Irene, a neighbor with a young son and a husband in jail.',
'R','DRAMA','17-JUN-11');
insert into movies values (title_id_seq.NEXTVAl,'Nobody',
'Hutch Mansell, a normal family man, deals with the remorse and family consequences that follow his decision not to engage in conflict when burglars break into his home at night.',
'R','ACTION','26-MAR-21');
insert into movies values (title_id_seq.NEXTVAL,'Gravity',
'Two astronauts work together to survive after an accident leaves them stranded in space.',
'PG13','SCIFI','31-AUG-13');
insert into movies values (title_id_seq.NEXTVAL,'Mad Max: Fury Road',
'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search of her homeland with the help of a group of female prisoners, a psychotic worshipper and a drifter named Max.',
'R','SCIFI','07-MAY-15');
insert into movies values (title_id_seq.NEXTVAL,'Bohemian Rhapsody',
'The story of the legendary British rock band Queen and lead singer Freddie Mercury, leading up to their famous performance at Live Aid (1985).',
'PG13','DOCUMENTARY','30-OCT-18');
insert into movies values (title_id_seq.NEXTVAL,'Split',
'Three girls are kidnapped by a man with 23 different diagnosed personalities. They must try to escape before the apparent appearance of a new and frightening personality 24.',
'R','ACTION','26-SEP-16');


insert into actors values (actor_id_seq.NEXTVAL,'Tom Hardy','Edward','Hardy','15-SEP-1977');
insert into actors values (actor_id_seq.NEXTVAL,'Rami Malek','Rami','Malek','12-MAY-1981');
insert into actors values (actor_id_seq.NEXTVAL,'Anya Taylor-Joy','Anya-Josephine','Taylor-Joy','16-APR-1996');
insert into actors values (actor_id_seq.NEXTVAL,'Bob Odenkirk','Robert','Odenkirk','22-OCT-1962');
insert into actors values (actor_id_seq.NEXTVAL,'Ryan Gosling','Ryan','Gosling','12-NOV-1980');
insert into actors values (actor_id_seq.NEXTVAL,'Sandra Bullock','Sandra','Bullock','26-JUL-1964');


insert into customers values (customer_id_seq.NEXTVAL,'Rofe', 'Bryn', '153-246-0816', '49 Mitchell Alley', 'Letsheng', 'BO', 'brofe0@trellian.com', '177-884-4558');
insert into customers values (customer_id_seq.NEXTVAL,'Ellis', 'Birch', '813-114-1595', '376 Mendota Center', 'Delaware', 'ON', 'bellis1@ca.gov', '808-302-9456');
insert into customers values (customer_id_seq.NEXTVAL,'Tibbetts', 'Lionel', '638-879-0500', '61462 Bluestem Road', 'Kiloloran', 'RE', 'ltibbetts2@bluehost.com', '665-358-7003');
insert into customers values (customer_id_seq.NEXTVAL,'Tigwell', 'Berti', '426-101-3127', '043 Clarendon Parkway', 'Zürich', 'KA', 'btigwell3@vkontakte.ru', '730-859-3995');
insert into customers values (customer_id_seq.NEXTVAL,'Sheaf', 'Morgan', '563-956-1615', '02 Schiller Lane', 'Oenopu', 'QU', 'msheaf4@xinhuanet.com', '350-560-3026');
insert into customers values (customer_id_seq.NEXTVAL,'Godney', 'Alysa', '112-640-2515', '61 Garrison Place', 'Datun', 'GU', 'agodney5@taobao.com', '466-931-8012');


insert into media values (media_id_seq.NEXTVAL,'DVD','1');
insert into media values (media_id_seq.NEXTVAL,'DVD','1');
insert into media values (media_id_seq.NEXTVAL,'DVD','1');
insert into media values (media_id_seq.NEXTVAL,'VHS','1');
insert into media values (media_id_seq.NEXTVAL,'VHS','1');
insert into media values (media_id_seq.NEXTVAL,'VHS','1');
insert into media values (media_id_seq.NEXTVAL,'VHS','1');
insert into media values (media_id_seq.NEXTVAL,'DVD','2');
insert into media values (media_id_seq.NEXTVAL,'DVD','2');
insert into media values (media_id_seq.NEXTVAL,'DVD','2');
insert into media values (media_id_seq.NEXTVAL,'VHS','2');
insert into media values (media_id_seq.NEXTVAL,'VHS','2');
insert into media values (media_id_seq.NEXTVAL,'DVD','3');
insert into media values (media_id_seq.NEXTVAL,'DVD','3');
insert into media values (media_id_seq.NEXTVAL,'VHS','3');
insert into media values (media_id_seq.NEXTVAL,'VHS','3');
insert into media values (media_id_seq.NEXTVAL,'VHS','3');
insert into media values (media_id_seq.NEXTVAL,'VHS','3');
insert into media values (media_id_seq.NEXTVAL,'DVD','4');
insert into media values (media_id_seq.NEXTVAL,'VHS','4');
insert into media values (media_id_seq.NEXTVAL,'DVD','5');
insert into media values (media_id_seq.NEXTVAL,'DVD','5');
insert into media values (media_id_seq.NEXTVAL,'VHS','5');
insert into media values (media_id_seq.NEXTVAL,'VHS','5');
insert into media values (media_id_seq.NEXTVAL,'VHS','5');
insert into media values (media_id_seq.NEXTVAL,'VHS','5');
insert into media values (media_id_seq.NEXTVAL,'DVD','6');
insert into media values (media_id_seq.NEXTVAL,'DVD','6');
insert into media values (media_id_seq.NEXTVAL,'VHS','6');

insert into star_billings values (1001,4,'Pos-apocaliptic world');
insert into star_billings values (1002,5,'Queen´s lead singer');
insert into star_billings values (1003,6,'Pressure and fear');
insert into star_billings values (1005,1,'Independent movie');


insert into rental_history values (92,'15-SEP-2022',101,'');
insert into rental_history values (98,'17-SEP-2022',102,'22-SEP-2022');
insert into rental_history values (95,'18-SEP-2022',103,'20-SEP-2022');
insert into rental_history values (97,'05-OCT-2022',104,'');
insert into rental_history values (102,'05-OCT-2022',105,'22-OCT-2022');
insert into rental_history values (103,'07-OCT-2022',106,'30-OCT-2022');
insert into rental_history values (100,'08-OCT-2022',106,'26-OCT-2022');
insert into rental_history values (101,'23-OCT-2022',105,'');
insert into rental_history values (113,'24-OCT-2022',105,'06-NOV-2022');
insert into rental_history values (119,'24-OCT-2022',103,'');