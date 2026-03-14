LOAD DATA 
TRUNCATE
INFILE *     
INTO TABLE  Editeur
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"' 
(EditeurID, Nom, Specialisation, Numtel, AdresseMail)
BEGINDATA
300, 'La plage', 'roman', 0143295685, NULL
301, 'Soleil Manga', 'manga', NULL, NULL
302, 'Mana Books', 'manga', NULL, NULL
303, 'Slalom', 'général', NULL, NULL
304, 'Penguin Books', 'romans', NULL, NULL
305, 'Gallimard', 'général', 0149544200, 'catalogue@gallimard.fr'
306, 'Hachette', 'jeunesse', 0143923000, 'dircomm@hachette-livre.fr'
307, 'Kurokawa', 'manga', NULL, NULL
308, 'Flammarion', 'général', 0140513100, 'accueil.flammarion@flammarion.fr'
309, 'Albin Michel', 'général', 0142791000, NULL
310, 'Imprévu', 'roman', NULL, 'michel.hayotte34@gmail.com'
311, 'Grasset', 'général', 0185082266, 'digitaldesk@dropteam.com'
312, 'Pika', 'manga', NULL, NULL
313, 'Kioon', 'manga', 0148016797, NULL
314, 'Playback', 'général', NULL, NULL
315, 'Le livre de Poche', 'roman', 0149543700, 'marketing@livredepoche.com'
316, 'Folio', 'général', 0149544200, 'catalogue@gallimard.fr'
317, 'Glénat', 'BD', 0476887575, NULL
318, 'Hatier', 'pédagogie', 0149544850, 'infoprofs@editions-hatier.fr'
319, 'Harper Collins', 'roman', NULL, 'contact-manuscrits-fiction@harpercollins.fr'
320, 'Bayard Jeunesse', 'jeunesse', 0174316060, 'sc.bayardjeunesse@groupebayard.com'
321, 'Pocket Jeunesse', 'jeunesse', NULL, NULL
322, 'Lumen', 'général', NULL, NULL
323, 'Gründ', 'enfant', 0153103600, NULL
324, 'Kotoon', 'général', NULL, NULL
325, 'Nathan', 'général', NULL, NULL
326, 'Robert Laffont', 'général', NULL, NULL
327, 'Panini Manga', 'manga', NULL, NULL
328, 'France Loisirs', 'général', 0145221146, NULL
329, 'Le Seuil', 'général', 0153263151, NULL
330, 'Palémon', 'thriller', NULL, NULL