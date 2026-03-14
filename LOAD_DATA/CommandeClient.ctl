LOAD DATA 
TRUNCATE
INFILE *     
INTO TABLE  CommandeClient
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"' 
(CommandeCID, Statut, AdresseLivraison, PrixTotCC, QuantiteTotCC, DateCC, ClientID, LibrairieID)
BEGINDATA
600,'terminé','12 rue de la Paix, Paris',32.80,2,TO_DATE('2024-01-15','YYYY-MM-DD'),500,100
601,'terminé','8 avenue Victor Hugo, Lyon',62.40,4,TO_DATE('2024-01-18','YYYY-MM-DD'),501,101
602,'en cours','25 boulevard Voltaire, Paris',44.40,3,TO_DATE('2024-01-20','YYYY-MM-DD'),502,102
603,'annulé','3 rue Nationale, Lille',52.19,3,TO_DATE('2024-01-22','YYYY-MM-DD'),503,103
604,'terminé','18 rue Gambetta, Bordeaux',44.80,2,TO_DATE('2024-01-25','YYYY-MM-DD'),504,104
605,'terminé','5 place Bellecour, Lyon',45.65,2,TO_DATE('2024-01-27','YYYY-MM-DD'),505,105
606,'en cours','40 rue Jean Jaurès, Roubaix',51.60,2,TO_DATE('2024-02-01','YYYY-MM-DD'),506,106
607,'terminé','9 rue de Strasbourg, Nantes',46.20,2,TO_DATE('2024-02-03','YYYY-MM-DD'),507,107
608,'terminé','22 rue d’Alsace, Strasbourg',35.90,2,TO_DATE('2024-02-05','YYYY-MM-DD'),508,108
609,'en cours','15 rue de la République, Marseille',36.30,2,TO_DATE('2024-02-07','YYYY-MM-DD'),509,109
610,'terminé','6 rue des Carmes, Toulouse',39.30,3,TO_DATE('2024-02-10','YYYY-MM-DD'),510,110
611,'terminé','11 rue Victor Basch, Rennes',22.40,2,TO_DATE('2024-02-12','YYYY-MM-DD'),511,111
612,'en cours','27 avenue Jean Médecin, Nice',34.30,2,TO_DATE('2024-02-15','YYYY-MM-DD'),512,112
613,'terminé','4 rue Pasteur, Montpellier',35.35,2,TO_DATE('2024-02-18','YYYY-MM-DD'),513,113
614,'terminé','19 rue Thiers, Grenoble',29.20,2,TO_DATE('2024-02-20','YYYY-MM-DD'),514,114
615,'annulé','2 rue de la Liberté, Dijon',27.10,2,TO_DATE('2024-02-22','YYYY-MM-DD'),515,115
616,'terminé','10 quai de la Loire, Orléans',24.60,2,TO_DATE('2024-02-25','YYYY-MM-DD'),516,116
617,'en cours','14 rue Saint-Michel, Angers',32.30,2,TO_DATE('2024-02-27','YYYY-MM-DD'),517,117
618,'terminé','7 rue du Port, La Rochelle',30.40,2,TO_DATE('2024-03-01','YYYY-MM-DD'),518,118
619,'terminé','21 avenue de la Mer, Sète',32.55,2,TO_DATE('2024-03-03','YYYY-MM-DD'),519,119
620,'en cours','13 rue des Fleurs, Tours',36.50,2,TO_DATE('2024-03-05','YYYY-MM-DD'),520,120
621,'terminé','16 rue du Général Leclerc, Reims',39.85,2,TO_DATE('2024-03-08','YYYY-MM-DD'),521,121
622,'terminé','1 rue de la Gare, Metz',43.20,2,TO_DATE('2024-03-10','YYYY-MM-DD'),522,122
623,'en cours','28 rue du Vieux Marché, Rouen',36.05,2,TO_DATE('2024-03-12','YYYY-MM-DD'),523,123
624,'terminé','33 rue Lafayette, Amiens',39.60,2,TO_DATE('2024-03-15','YYYY-MM-DD'),524,124
625,'terminé','17 rue des Arts, Avignon',43.59,2,TO_DATE('2024-03-18','YYYY-MM-DD'),525,125
626,'terminé','5 rue du Château, Blois',36.29,2,TO_DATE('2024-03-20','YYYY-MM-DD'),526,126
627,'terminé','26 avenue de Bretagne, Vannes',39.55,2,TO_DATE('2024-03-22','YYYY-MM-DD'),527,127
628,'en cours','9 rue des Alpes, Annecy',63.40,3,TO_DATE('2024-03-25','YYYY-MM-DD'),528,128
629,'terminé','20 rue de la Plage, Saint-Malo',54.20,3,TO_DATE('2024-03-28','YYYY-MM-DD'),529,129
630,'terminé','12 rue des Ponts, Beauvais',17.49,1,TO_DATE('2024-04-12','YYYY-MM-DD'),540,126
631,'terminé','12 rue des Ponts, Beauvais',19.85,1,TO_DATE('2024-04-15','YYYY-MM-DD'),540,127
632,'terminé','12 rue des Ponts, Beauvais',21.60,1,TO_DATE('2024-04-18','YYYY-MM-DD'),540,128
633,'terminé','6 rue des Carmes, Toulouse',31.50,3,TO_DATE('2024-05-02','YYYY-MM-DD'),510,110
634,'terminé','11 rue Victor Basch, Rennes',41.50,3,TO_DATE('2024-05-10','YYYY-MM-DD'),511,111
635,'terminé','27 avenue Jean Médecin, Nice',41.70,3,TO_DATE('2024-05-20','YYYY-MM-DD'),512,112
636,'terminé','4 rue Pasteur, Montpellier',48.10,3,TO_DATE('2024-06-05','YYYY-MM-DD'),513,113
637,'terminé','19 rue Thiers, Grenoble',53.30,3,TO_DATE('2024-06-07','YYYY-MM-DD'),514,114
638,'terminé','10 quai de la Loire, Orléans',50.70,4,TO_DATE('2024-06-09','YYYY-MM-DD'),516,115
639,'terminé','14 rue Saint-Michel, Angers',41.40,3,TO_DATE('2024-06-11','YYYY-MM-DD'),517,116
640,'terminé','7 rue du Port, La Rochelle',45.70,3,TO_DATE('2024-10-03','YYYY-MM-DD'),518,117
641,'terminé','1 rue de la Gare, Metz',39.70,2,TO_DATE('2024-11-05','YYYY-MM-DD'),522,127
642,'terminé','28 rue du Vieux Marché, Rouen',43.20,2,TO_DATE('2024-11-10','YYYY-MM-DD'),523,128
643,'terminé','13 rue des Fleurs, Tours',206.40,8,TO_DATE('2025-07-10','YYYY-MM-DD'),520,106
644,'terminé','8 avenue Victor Hugo, Lyon',30.10,1,TO_DATE('2025-08-05','YYYY-MM-DD'),501,106
645,'terminé','18 rue Gambetta, Bordeaux',32.80,2,TO_DATE('2025-06-20','YYYY-MM-DD'),504,100
646,'terminé','5 place Bellecour, Lyon',16.90,1,TO_DATE('2025-09-15','YYYY-MM-DD'),505,100
647,'annulé','2 rue de la Liberté, Dijon',23.60,2,TO_DATE('2025-02-01','YYYY-MM-DD'),515,115
648,'annulé','2 rue de la Liberté, Dijon',16.80,1,TO_DATE('2025-03-01','YYYY-MM-DD'),515,116
649,'annulé','2 rue de la Liberté, Dijon',18.90,1,TO_DATE('2025-04-01','YYYY-MM-DD'),515,117
650,'terminé','2 rue de la Liberté, Dijon',11.80,1,TO_DATE('2025-05-01','YYYY-MM-DD'),515,115