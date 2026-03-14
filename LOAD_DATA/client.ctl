LOAD DATA 
TRUNCATE
INFILE *     
INTO TABLE  Client
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"' 
(ClientID, Nom, Prenom, AdressePostale, NumTel, AdresseMail)
BEGINDATA
500,'Dupont','Jean','12 rue de la Paix, Paris','0612345678','jean.dupont@gmail.com'
501,'Martin','Claire','8 avenue Victor Hugo, Lyon','0623456789','claire.martin@yahoo.fr'
502,'Bernard','Lucas','25 boulevard Voltaire, Paris',NULL,'lucas.bernard@gmail.com'
503,'Petit','Emma','3 rue Nationale, Lille','0634567890',NULL
504,'Robert','Thomas','18 rue Gambetta, Bordeaux','0645678901','thomas.robert@outlook.fr'
505,'Richard','Julie','5 place Bellecour, Lyon',NULL,'julie.richard@gmail.com'
506,'Durand','Paul','40 rue Jean Jaurès, Roubaix','0656789012',NULL
507,'Moreau','Camille','9 rue de Strasbourg, Nantes','0667890123','camille.moreau@gmail.com'
508,'Simon','Hugo','22 rue d’Alsace, Strasbourg','0678901234','hugo.simon@hotmail.fr'
509,'Laurent','Sarah','15 rue de la République, Marseille',NULL,NULL
510,'Lefevre','Antoine','6 rue des Carmes, Toulouse','0689012345','antoine.lefevre@gmail.com'
511,'Michel','Laura','11 rue Victor Basch, Rennes','0690123456',NULL
512,'Garcia','Nicolas','27 avenue Jean Médecin, Nice',NULL,'nicolas.garcia@yahoo.fr'
513,'Roux','Manon','4 rue Pasteur, Montpellier','0611223344','manon.roux@gmail.com'
514,'Fournier','Alexandre','19 rue Thiers, Grenoble','0622334455',NULL
515,'Morel','Chloé','2 rue de la Liberté, Dijon',NULL,'chloe.morel@gmail.com'
516,'Girard','Maxime','10 quai de la Loire, Orléans','0633445566',NULL
517,'Andre','Lucie','14 rue Saint-Michel, Angers','0644556677','lucie.andre@outlook.fr'
518,'Lemoine','Baptiste','7 rue du Port, La Rochelle',NULL,NULL
519,'Perez','Inès','21 avenue de la Mer, Sète','0655667788','ines.perez@gmail.com'
520,'Colin','Mathieu','13 rue des Fleurs, Tours','0666778899',NULL
521,'Renard','Élodie','16 rue du Général Leclerc, Reims',NULL,'elodie.renard@gmail.com'
522,'Boyer','Julien','1 rue de la Gare, Metz','0677889900',NULL
523,'Gauthier','Anaïs','28 rue du Vieux Marché, Rouen','0688990011','anais.gauthier@gmail.com'
524,'Perrin','Quentin','33 rue Lafayette, Amiens',NULL,NULL
525,'Chevalier','Marine','17 rue des Arts, Avignon','0699001122','marine.chevalier@gmail.com'
526,'Francois','Romain','5 rue du Château, Blois',NULL,'romain.francois@yahoo.fr'
527,'Legrand','Sophie','26 avenue de Bretagne, Vannes','0610112233',NULL
528,'Blanc','Adrien','9 rue des Alpes, Annecy','0621223344','adrien.blanc@gmail.com'
529,'Barbier','Pauline','20 rue de la Plage, Saint-Malo',NULL,NULL
530,'Lopez','Carlos','7 rue Pablo Picasso, Nîmes','0633447788','carlos.lopez@gmail.com'
531,'Meunier','Amandine','18 rue des Lilas, Chartres',NULL,'amandine.meunier@outlook.fr'
532,'Renaud','Victor','2 place Jeanne d’Arc, Orléans','0644558899',NULL
533,'Faure','Léa','29 rue Carnot, Limoges','0655669900','lea.faure@gmail.com'
534,'Benoit','Julien','14 avenue du Maréchal Foch, Pau',NULL,NULL
535,'Marchand','Océane','6 rue des Écoles, Laval','0666770011','oceane.marchand@gmail.com'
536,'Aubert','Kevin','10 rue du Moulin, Troyes','0677881122',NULL
537,'Navarro','Isabelle','33 boulevard d’Arcole, Toulouse',NULL,'isabelle.navarro@yahoo.fr'
538,'Caron','Florian','21 rue des Capucins, Arras','0688992233',NULL
539,'Julien','Marion','4 rue Sainte-Catherine, Bordeaux','0699003344','marion.julien@gmail.com'
540,'Leroy','Damien','12 rue des Ponts, Beauvais',NULL,NULL
541,'Schmitt','Paul','19 rue de la Gare, Colmar','0610114455','paul.schmitt@gmail.com'
542,'Weber','Clara','5 rue des Tanneurs, Mulhouse',NULL,'clara.weber@outlook.fr'
543,'Nguyen','Thierry','8 avenue d’Italie, Paris','0621225566',NULL
544,'Pham','Linh','17 rue des Rosiers, Paris',NULL,'linh.pham@gmail.com'
545,'Diallo','Moussa','30 rue de la République, Saint-Denis','0632336677',NULL
546,'Benali','Samira','22 rue Ibn Sina, Argenteuil',NULL,'samira.benali@gmail.com'
547,'Klein','Arthur','9 rue du Faubourg, Metz','0643447788',NULL
548,'Pons','Émilie','11 chemin des Vignes, Narbonne',NULL,'emilie.pons@gmail.com'
549,'Vidal','Jérôme','15 rue des Arènes, Arles','0654558899',NULL
550,'Maillard','Noémie','3 place du Marché, Saumur','0665669900','noemie.maillard@gmail.com'
551,'Hoarau','Lucas','28 rue du Port, Saint-Pierre','0676770011',NULL
552,'Payet','Anaëlle','6 avenue des Cocotiers, Saint-Denis','0687881122','anaelle.payet@gmail.com'
553,'Giraud','Rémi','20 rue des Remparts, Carpentras',NULL,NULL
554,'Picard','Justine','13 rue de l’Université, Poitiers','0698992233','justine.picard@gmail.com'
555,'Lacroix','Sébastien','7 rue du Stade, Albi',NULL,NULL
556,'Henry','Pauline','26 avenue du Général de Gaulle, Sens','0611223345','pauline.henry@gmail.com'
557,'Noel','Mathis','5 rue des Acacias, Haguenau',NULL,NULL
558,'Couturier','Elsa','18 rue des Arts, Blois','0622334456','elsa.couturier@outlook.fr'
559,'Bailly','Romain','9 rue du Centre, Montbéliard',NULL,NULL