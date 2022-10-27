insert into Movies (title,description,rating,category,release_date)
values ('Drive',
'By day, Driver is a movie stunt driver, but by night he becomes a chauffeur for criminals. Driver´s world changes the day he meets Irene, a neighbor with a young son and a husband in jail.',
'R','DRAMA','2011-06-17');
insert into movies (title,description,rating,category,release_date)
values ('Nobody',
'Hutch Mansell, a normal family man, deals with the remorse and family consequences that follow his decision not to engage in conflict when burglars break into his home at night.',
'R','ACTION','2021-03-26');
insert into movies (title,description,rating,category,release_date)
values ('Gravity',
'Two astronauts work together to survive after an accident leaves them stranded in space.',
'PG13','SCIFI','2013-08-31');
insert into movies (title,description,rating,category,release_date)
values ('Mad Max: Fury Road',
'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search of her homeland with the help of a group of female prisoners, a psychotic worshipper and a drifter named Max.',
'R','SCIFI','2015-05-07');
insert into movies (title,description,rating,category,release_date)
values ('Bohemian Rhapsody',
'The story of the legendary British rock band Queen and lead singer Freddie Mercury, leading up to their famous performance at Live Aid (1985).',
'PG13','DOCUMENTARY','2018-10-30');
insert into movies (title,description,rating,category,release_date)
values ('Split',
'Three girls are kidnapped by a man with 23 different diagnosed personalities. They must try to escape before the apparent appearance of a new and frightening personality 24.',
'R','ACTION','2016-07-26');

insert into actors (stage_name,last_name,first_name,birth_date)
values ('Tom Hardy','Edward','Hardy','1977-09-15');
insert into actors (stage_name,last_name,first_name,birth_date)
values ('Rami Malek','Rami','Malek','1981-05-12');
insert into actors (stage_name,last_name,first_name,birth_date)
values ('Anya Taylor-Joy','Anya-Josephine','Taylor-Joy','1996-04-16');
insert into actors (stage_name,last_name,first_name,birth_date)
values ('Bob Odenkirk','Robert','Odenkirk','1962-10-22');
insert into actors (stage_name,last_name,first_name,birth_date)
values ('Ryan Gosling','Ryan','Gosling','1980-11-12');
insert into actors (stage_name,last_name,first_name,birth_date)
values ('Sandra Bullock','Sandra','Bullock','1964-07-26');

insert into customers (last_name,first_name,home_phone,address,city,state,email,cell_phone)
values ('Rofe', 'Bryn', '153-246-0816', '49 Mitchell Alley', 'Letsheng', 'BO', 'brofe0@trellian.com', '177-884-4558');
insert into customers (last_name,first_name,home_phone,address,city,state,email,cell_phone)
values ('Ellis', 'Birch', '813-114-1595', '376 Mendota Center', 'Delaware', 'ON', 'bellis1@ca.gov', '808-302-9456');
insert into customers (last_name,first_name,home_phone,address,city,state,email,cell_phone)
values ('Tibbetts', 'Lionel', '638-879-0500', '61462 Bluestem Road', 'Kiloloran', 'RE', 'ltibbetts2@bluehost.com', '665-358-7003');
insert into customers (last_name,first_name,home_phone,address,city,state,email,cell_phone)
values ('Tigwell', 'Berti', '426-101-3127', '043 Clarendon Parkway', 'Zürich', 'KA', 'btigwell3@vkontakte.ru', '730-859-3995');
insert into customers (last_name,first_name,home_phone,address,city,state,email,cell_phone)
values ('Sheaf', 'Morgan', '563-956-1615', '02 Schiller Lane', 'Oenopu', 'QU', 'msheaf4@xinhuanet.com', '350-560-3026');
insert into customers (last_name,first_name,home_phone,address,city,state,email,cell_phone)
values ('Godney', 'Alysa', '112-640-2515', '61 Garrison Place', 'Datun', 'GU', 'agodney5@taobao.com', '466-931-8012');

insert into media (format,title_id) values ('DVD','1');
insert into media (format,title_id) values ('DVD','1');
insert into media (format,title_id) values ('DVD','1');
insert into media (format,title_id) values ('VHS','1');
insert into media (format,title_id) values ('VHS','1');
insert into media (format,title_id) values ('VHS','1');
insert into media (format,title_id) values ('VHS','1');
insert into media (format,title_id) values ('DVD','2');
insert into media (format,title_id) values ('DVD','2');
insert into media (format,title_id) values ('DVD','2');
insert into media (format,title_id) values ('VHS','2');
insert into media (format,title_id) values ('VHS','2');
insert into media (format,title_id) values ('DVD','3');
insert into media (format,title_id) values ('DVD','3');
insert into media (format,title_id) values ('VHS','3');
insert into media (format,title_id) values ('VHS','3');
insert into media (format,title_id) values ('VHS','3');
insert into media (format,title_id) values ('VHS','3');
insert into media (format,title_id) values ('DVD','4');
insert into media (format,title_id) values ('VHS','4');
insert into media (format,title_id) values ('DVD','5');
insert into media (format,title_id) values ('DVD','5');
insert into media (format,title_id) values ('VHS','5');
insert into media (format,title_id) values ('VHS','5');
insert into media (format,title_id) values ('VHS','5');
insert into media (format,title_id) values ('VHS','5');
insert into media (format,title_id) values ('DVD','6');
insert into media (format,title_id) values ('DVD','6');
insert into media (format,title_id) values ('VHS','6');

insert into star_billings values (1001,4,'Pos-apocaliptic world');
insert into star_billings values (1002,5,'Queen´s lead singer');
insert into star_billings values (1003,6,'Pressure and fear');
insert into star_billings values (1005,1,'Independent movie');

insert into rental_history values (92,'2022-09-15','101',null);
insert into rental_history values (98,'2022-09-17',102,'2022-09-22');
insert into rental_history values (95,'2022-09-18',103,'2022-09-20');
insert into rental_history values (97,'2022-10-05',104,null);
insert into rental_history values (102,'2022-10-05',105,'2022-10-22');
insert into rental_history values (103,'2022-10-07',106,'2022-10-30');
insert into rental_history values (100,'2022-10-08',106,'2022-10-26');
insert into rental_history values (101,'2022-10-23',105,null);
insert into rental_history values (113,'2022-10-24',105,'2022-11-06');
insert into rental_history values (119,'2022-10-24',103,null);