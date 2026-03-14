LOAD DATA 
TRUNCATE
INFILE * 
INTO TABLE LIVRE 
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY "'"
(ISBN, Titre, Genre, EditeurID, Auteur, DateParution DATE "YYYY-MM-DD", Resume )
BEGINDATA
9782070368225,'Le Petit Prince','Roman',300,'Antoine de Saint-Exupéry','1943-04-06','Un pilote perdu dans le désert rencontre un petit prince venu d une autre planète.'
9782253003547,'Les Misérables','Roman',301,'Victor Hugo','1862-01-01','L''histoire de Jean Valjean, ancien bagnard, et de sa rédemption dans une France en révolution.'
9782070360539,'Candide','Roman',302,'Voltaire','1759-01-01','Candide, jeune optimiste, voyage à travers un monde rempli d injustices et de catastrophes.'
9782070368226,'1984','Roman',303,'George Orwell','1949-06-08','Dans une société totalitaire, Winston Smith tente de résister à la surveillance et à la manipulation du Parti.'
9782070368227,'Le Comte de Monte-Cristo','Roman',304,'Alexandre Dumas','1845-08-28','L''histoire d Edmond Dantès, trahi et emprisonné, qui se venge de ses ennemis.'
9782070368228,'Harry Potter à l''école des sorciers','Fantasy',305,'J.K. Rowling','1997-06-26','Harry Potter découvre qu il est un sorcier et rejoint Poudlard pour y apprendre la magie.'
9782070368229,'Le Seigneur des Anneaux : La Communauté de l''Anneau','Fantasy',306,'J.R.R. Tolkien','1954-07-29','Frodon Sacquet part détruire un anneau maléfique pour sauver la Terre du Milieu.'
9782070368230,'Da Vinci Code','Thriller',307,'Dan Brown','2003-03-18','Un professeur de symbologie déchiffre des codes pour résoudre un meurtre mystérieux au Louvre.'
9782070368231,'Le Parfum','Roman',308,'Patrick Süskind','1985-12-01','Jean-Baptiste Grenouille, doté d un odorat surhumain, devient un tueur obsessionnel à la recherche du parfum parfait.'
9782070368232,'La Peste','Roman',309,'Albert Camus','1947-06-10','Une épidémie de peste ravage Oran et met à l épreuve les habitants face à la mort et à l absurde.'
9784088728407,'Naruto Vol. 1','Manga',310,'Masashi Kishimoto','1999-09-21',NULL
9782723442275,'Bleach Tome 1','Manga',311,'Tite Kubo','2001-08-07',NULL
9781974700523,'Demon Slayer: Kimetsu no Yaiba Vol.1','Manga',312,'Koyoharu Gotōge','2016-02-15',NULL
9784088802641,'My Hero Academia Vol.1','Manga',313,'Kōhei Horikoshi','2014-07-07',NULL
9782344008416,'One Piece Vol.1','Manga',314,'Eiichirō Oda','1997-07-22',NULL
9782759505603,'Fullmetal Alchemist Tome 1','Manga',315,'Hiromu Arakawa','2001-08-10',NULL
9782017041399,'Death Note Vol. 1','Manga',316,'Tsugumi Ōba and Takeshi Obata','2003-12-01',NULL
9782723450431,'Hunter X Hunter Vol. 1','Manga',317,'Yoshihiro Togashi','1998-03-16',NULL
9782378802263,'Kimetsu no Yaiba (Demon Slayer) - Édition France, Vol.1','Manga',318,'Koyoharu Gotōge','2019-10-04',NULL
9782505033935,'Bleach Tome 1 (édition française)','Manga',319,'Tite Kubo','2004-01-01',NULL
9782017088373,'Anatomy Love Story','Romance',300,'Mika','2021-01-12',NULL
9782092543030,'Nos étoiles contraires','Romance',301,'John Green','2012-01-12',NULL
9782226447010,'La nuit où les étoiles se sont éteintes','Romance',302,'Kira Pine','2020-10-15',NULL
9789000000023,'Jamais Plus','Romance',303,'Colleen Hoover','2020-03-22',NULL
9782266258569,'L année solitaire','Romance',304,'Tracy Rees','2021-02-18',NULL
9782378801655,'Heartstopper - Tome 1','Romance',305,'Alice Oseman','2019-08-07',NULL
9782378802003,'Heartstopper - Tome 2','Romance',306,'Alice Oseman','2020-05-05',NULL
9782378802416,'Heartstopper - Tome 3','Romance',307,'Alice Oseman','2021-09-01',NULL
9782378802850,'Heartstopper - Tome 4','Romance',308,'Alice Oseman','2022-06-15',NULL
9782378803109,'Heartstopper - Tome 5','Romance',309,'Alice Oseman','2023-03-10',NULL
9782253132482,'Ne le dis à personne','Thriller',310,'Harlan Coben','2002-03-06',NULL
9782253175253,'Sans un mot','Thriller',311,'Harlan Coben','2009-05-13',NULL
9782253176489,'Fais-moi confiance','Thriller',312,'Harlan Coben','2011-09-15',NULL
