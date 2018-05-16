-- create database 2009972209_lokaverkefnid

/*CREATE TABLE flytjandi
(
flytjandi_ID INT(11) PRIMARY KEY,
nafn VARCHAR(75),
stofndagur DATE,
lokadagur DATE,
lysing TEXT
);*/

/*CREATE TABLE utgefandi(
utgefandi_ID INT(10) PRIMARY KEY,
nafn VARCHAR(75),
stadsetning VARCHAR(125),
email VARCHAR(125)
);*/

/*CREATE TABLE tegund(
tegund_ID INT(10) PRIMARY KEY,
nafn VARCHAR(75)
);*/

/*CREATE TABLE lag(
lag_ID INT(10) PRIMARY KEY,
heiti VARCHAR(60),
lengd DECIMAL(5,2),
texti TEXT,
utgafudagur DATE,
tegund_ID INT(10),
utgefandi_ID INT(10),
flytjandi_ID INT(10),
constraint lag_tegund_FK foreign key(tegund_ID) references Tegund(tegund_ID),
constraint lag_utgefandi_FK foreign key(utgefandi_ID) references Utgefandi(utgefandi_ID),
constraint lag_flytjandi_FK foreign key(flytjandi_ID) references Flytjandi(flytjandi_ID)
);*/

/*CREATE TABLE notandi(
notandi_ID INT(10) PRIMARY KEY,
nafn VARCHAR(75),
heimilisfang VARCHAR(75),
fædingardagur DATE,
email VARCHAR(125)
);*/

/*CREATE TABLE notandalisti(
list_ID INT(11) PRIMARY KEY,
heiti VARCHAR(75),
stofndagur DATE,
notandi_ID INT(11),
constraint notandalisti_notandi_FK foreign key(notandi_ID) references notandi(notandi_ID)
);*/

/*CREATE TABLE listalog(
listalag INT (11) PRIMARY KEY,
listi_ID INT (11),
lag_ID INT (11),
rod INT(11),
constraint listalog_listi_ID_FK foreign key(listi_ID) references notandalisti(list_ID),
constraint listalog_lag_ID_FK foreign key(lag_ID) references lag(lag_ID)
);*/

/*insert into flytjandi(flytjandi_ID, nafn, stofndagur, lokadagur, lysing)
values ("0000000001","Childish Gambino", '2011-11-15', '2069-04-20',"Rapp"),
	   ("0000000002","Twice", '2015-02-11','2069-04-20',"K-Pop"),
	   ("0000000003","Bo Burnham", '2006-05-06','2069-04-20',"Almennt"),
       ("0000000004","Tenacious D", '1994-02-11','2069-04-20',"Rock"),
       ("0000000005","Hamilton",'2015-07-16','2069-04-20',"Musical"),
       ("0000000006","Dear Evan Hansen",'2015-06-15','2069-04-20',"Musical"),
       ("0000000007","OxT",'2015-01-01','2069-04-20',"Rock"),
       ("0000000008","Lil' Dicky",'2013-02-11','2069-04-20',"Rapp"),
       ("0000000009","Bradio",'2010-02-11','2069-04-20',"Funk Rock"),
       ("0000000010","Fever the Ghost",'2010-09-11','2069-04-20',"Prog Rock");*/
       
/*insert into tegund(tegund_ID, nafn)
values ("1","Rap"),
       ("2","KPop"),
       ("3","Comedy"),
       ("4","Rock"),
       ("5","Musical"),
       ("6","Prog");*/
       
/*insert into utgefandi(utgefandi_ID,nafn,stadsetning,email)
values ("1","Broadway","New York","broadway@realbroadway.com"),
       ("2","Glassnote Records","New York","glassnote@records.com"),
       ("3","Warner Music Japan","Tokyo","warnerjp@gmail.com"),
       ("4","Netflix","Arizona","netflix@netflix.netflix"),
       ("5","Columbia Records","New York","columbia@cocaine.com"),
       ("6","School Boy","Usa","schoolboy@bois.com"),
       ("7","youtube","usa","youtube@youtube.com");*/
       
/*insert into lag(lag_ID, heiti, lengd, texti, utgafudagur, tegund_ID, utgefandi_ID, flytjandi_ID) 
values ("1","This is America",4.05,"Ameríka",'2018-05-05',"1","2","0000000001"),
	   ("2","Terrified",3.35,"Scared",'2017-05-05',"1","2","0000000001"),
	   ("3","REDBONE",2.55,"Ameríka",'2016-05-05',"1","2","0000000001"),
       
	   ("4","CHEER UP",4.00,"Nice",'2018-04-24',"2","3","0000000002"),
       ("5","What is Love",3.43,"Naisu",'2016-04-24',"2","3","0000000002"),
       ("6","Candy Pop",4.25,"NAAICU",'2017-04-24',"2","3","0000000002"),
       
       ("7","Channel 5 News - The Musical",4.30,"Fokk",'2013-12-17',"3","4","0000000003"),
       ("8","WORDS WORDS WORDS",4.07,"Damn",'2009-12-17',"3","4","0000000003"),
       ("9","OH BO",4.25,"Damn",'2014-12-17',"3","4","0000000003"),
       
       ("10","Wonderboy",4.06,"Wonderful",'2002-11-11',"3","5","0000000004"),
       ("11","Tribute",3.06,"Amaze",'2002-11-11',"3","5","0000000004"),
       ("12","Beelzeboss",5.36,"Cool beans",'2002-11-11',"3","5","0000000004"),
       
       ("13","Guns and Ships",2.07, "Dank",'2015-02-15',"5","1","0000000005"),
	   ("14","Farmer Refuted",3.07, "Dank",'2015-02-15',"5","1","0000000005"),
       ("15","Non-Stop",6.07, "Dank",'2015-02-15',"5","1","0000000005"),
       
       ("16","Sincerely, Me",3.42,"From me to me",'2015-07-15',"5"," 1","0000000006"),
	   ("17","To Break In a glove",3.35,"Love yourself",'2015-07-15',"5"," 1","0000000006"),
       ("18","Requiem",4.42,"Bad boy",'2015-07-15',"5","1","0000000006"),
       
       ("19","Clattanoia",1.31,"OVERLORD",'2015-07-08',"4","3","0000000007"),
	   ("20","Laughter Slaughter",2.31,"OVERLORDIER",'2015-07-08',"4","3","0000000007"),
       ("21","GO CRY GO",3.31,"OVERLORDIEST",'2015-07-08',"4","3","0000000007"),
       
       ("22","Pillow Talking",10.46,"Aliens",'2015-06-17',"1","6","0000000008"),
	   ("23","$ave Dat Money",3.46,"Cash",'2015-06-17',"1","6","0000000008"),
       ("24","Professional Rapper",4.46,"Snoop",'2015-06-17',"1","6","0000000008"),
       
       ("25","Flyers",3.35,"Death",'2015-02-15',"4","3","0000000009"),
	   ("26","Hotel Alien",6.35,"Life",'2015-02-15',"4","3","0000000009"),
       ("27","Gift",4.35,"Void",'2015-02-15',"4","3","0000000009"),
       
       ("28","Source",4.18,"LSD",'2010-10-13',"6","7","0000000010"),
       ("29","Metempsychosis",4.18,"LSD",'2010-10-13',"6","7","0000000010"),
       ("30","Hinterland",4.18,"LSD",'2010-10-13',"6","7","0000000010");*/
       
/*insert into notandi(notandi_ID, nafn, heimilisfang, fædingardagur, email)
values ("1", "Carlito", "Skólastaður 1", '1991-01-01', "Carlito@gmai.com"),
	   ("2", "Meniez", "Skólastaður 2", '1992-01-01', "Meniez@gmail.com"),
       ("3", "Havier", "Skólastaður 3", '1993-01-01', "Havier@gmail.com"),
       ("4", "Tyrone", "Skólastaður 4", '1994-01-01', "Tyrone@gmail.com"),
       ("5", "Dicko", "Skólastaður 5", '1995-01-01', "Dicko@gmail.co."),
       ("6", "Undur", "Skólastaður 6", '1996-01-01', "Undur@gmail.com"),
       ("7", "Jack", "Skólastaður 7", '1997-01-01', "Jack@gamil.com");*/
       
/*insert into notandalisti(list_ID,heiti,stofndagur,notandi_ID)
values ("1","Listi1",'1991-01-01',"1"),
	("2","Listi2",'1992-01-01',"1"),
	("3","Listi3",'1993-01-01',"1"),
	("4","Listi4",'1994-01-01',"1"),
	("5","Listi5",'1995-01-01',"1"),
    
	("6","Listi6",'1991-02-01',"2"),
	("7","Listi7",'1992-02-01',"2"),
	("8","Listi8",'1993-02-01',"2"),
	("9","Listi9",'1994-02-01',"2"),
	("10","Listi10",'1995-02-01',"2"),
    
	("11","Listi11",'1991-03-01',"3"),
	("12","Listi12",'1992-03-01',"3"),
	("13","Listi13",'1993-03-01',"3"),
	("14","Listi14",'1994-03-01',"3"),
	("15","Listi15",'1995-03-01',"3"),
    
	("16","Listi16",'1991-04-01',"4"),
	("17","Listi17",'1992-04-01',"4"),
	("18","Listi18",'1993-04-01',"4"),
	("19","Listi19",'1994-04-01',"4"),
	("20","Listi20",'1995-04-01',"4"),
    
	("21","Listi21",'1991-05-01',"5"),
	("22","Listi22",'1992-05-01',"5"),
	("23","Listi23",'1993-05-01',"5"),
	("24","Listi24",'1994-05-01',"5"),
	("25","Listi25",'1995-05-01',"5"),
    
	("26","Listi26",'1991-06-01',"6"),
	("27","Listi27",'1992-06-01',"6"),
	("28","Listi28",'1993-06-01',"6"),
	("29","Listi29",'1994-06-01',"6"),
	("30","Listi30",'1995-06-01',"6"),
    
	("31","Listi31",'1991-07-01',"7"),
	("32","Listi32",'1992-07-01',"7"),
	("33","Listi33",'1993-07-01',"7"),
	("34","Listi34",'1994-07-01',"7"),
	("35","Listi35",'1995-07-01',"7");*/
    
-- 1: Sýnið heiti og útgefanda allra laga tiltekins flytjanda (Bo Burnham).
/* SELECT flytjandi_ID, heiti 
FROM lag
WHERE flytjandi_ID = "000000003";*/

-- 2: Sýnið nafn, heiti allra lagalista sem tiltekið lag er á (þið veljið lagið sjálf).
/*select heiti, list_ID
from notandalisti
where heiti = "This is America";*/

-- 3: Sýnið heiti og lengd allra laga sem tilheyra tegundinni „rapp“.
/*SELECT heiti, lengd, tegund_ID
FROM lag
WHERE tegund_ID = 1*/

-- 4: Sýnið heiti, lengd, og útgáfudag allra laga sem taka meira en 5 mín í spilun, raðað eftir lengd.
/*SELECT heiti, lengd, utgafudagur
FROM lag
WHERE lengd >= 5.00
ORDER BY lag.lengd*/