LOAD DATA 
TRUNCATE
INFILE *     
INTO TABLE  Employe
FIELDS TERMINATED BY "," OPTIONALLY ENCLOSED BY '"' 
(EditeurID, Statut, PrixtotCE, QuantiteTotCE, DateCE, EditeurID, LibrairieID)
BEGINDATA
400, 'terminé', 0, 0, TO_DATE('2024-01-15','YYYY-MM-DD'), 300, 100
401, 'terminé', 0, 0, TO_DATE('2023-03-22','YYYY-MM-DD'), 300, 101
402, 'en cours', 0, 0, TO_DATE('2025-06-10','YYYY-MM-DD'), 300, 102
403, 'terminé', 0, 0, TO_DATE('2022-11-05','YYYY-MM-DD'), 300, 103
404, 'annulé', 0, 0, TO_DATE('2000-01-30','YYYY-MM-DD'), 300, 104
405, 'terminé', 0, 0, TO_DATE('2015-02-14','YYYY-MM-DD'), 300, 105
406, 'terminé', 0, 0, TO_DATE('2024-09-18','YYYY-MM-DD'), 300, 106
407, 'en cours', 0, 0, TO_DATE('2021-12-02','YYYY-MM-DD'), 300, 107
408, 'terminé', 0, 0, TO_DATE('2010-07-25','YYYY-MM-DD'), 300, 108
409, 'terminé', 0, 0, TO_DATE('2024-11-11','YYYY-MM-DD'), 300, 109
410, 'annulé', 0, 0, TO_DATE('2023-05-01','YYYY-MM-DD'), 300, 110
411, 'terminé', 0, 0, TO_DATE('2022-08-19','YYYY-MM-DD'), 300, 111
412, 'terminé', 0, 0, TO_DATE('2018-04-09','YYYY-MM-DD'), 300, 112
413, 'en cours', 0, 0, TO_DATE('2025-12-12','YYYY-MM-DD'), 300, 113
414, 'terminé', 0, 0, TO_DATE('2005-03-03','YYYY-MM-DD'), 300, 114
415, 'terminé', 0, 0, TO_DATE('2024-02-28','YYYY-MM-DD'), 300, 115
416, 'terminé', 0, 0, TO_DATE('2020-06-16','YYYY-MM-DD'), 300, 116
417, 'annulé', 0, 0, TO_DATE('2007-07-07','YYYY-MM-DD'), 300, 117
418, 'terminé', 0, 0, TO_DATE('2023-09-20','YYYY-MM-DD'), 300, 118
419, 'terminé', 0, 0, TO_DATE('2021-10-30','YYYY-MM-DD'), 300, 119
420, 'en cours', 0, 0, TO_DATE('2025-01-14','YYYY-MM-DD'), 300, 120
421, 'terminé', 0, 0, TO_DATE('2019-12-25','YYYY-MM-DD'), 300, 121
422, 'terminé', 0, 0, TO_DATE('2024-01-01','YYYY-MM-DD'), 300, 122
423, 'terminé', 0, 0, TO_DATE('2022-04-15','YYYY-MM-DD'), 300, 123
424, 'annulé', 0, 0, TO_DATE('2008-08-08','YYYY-MM-DD'), 300, 124
425, 'terminé', 0, 0, TO_DATE('2023-05-17','YYYY-MM-DD'), 300, 125
426, 'en cours', 0, 0, TO_DATE('2024-11-22','YYYY-MM-DD'), 300, 126
427, 'terminé', 0, 0, TO_DATE('2010-10-10','YYYY-MM-DD'), 300, 127
428, 'terminé', 0, 0, TO_DATE('2025-03-05','YYYY-MM-DD'), 300, 128
429, 'terminé', 0, 0, TO_DATE('2020-02-29','YYYY-MM-DD'), 300, 129
430, 'terminé', 0, 0, TO_DATE('2021-07-13','YYYY-MM-DD'), 300, 130
431, 'annulé', 0, 0, TO_DATE('2022-06-24','YYYY-MM-DD'), 300, 131
432, 'terminé', 0, 0, TO_DATE('2023-09-09','YYYY-MM-DD'), 300, 132
433, 'terminé', 0, 0, TO_DATE('2015-12-31','YYYY-MM-DD'), 300, 133
434, 'en cours', 0, 0, TO_DATE('2024-04-04','YYYY-MM-DD'), 300, 134
435, 'terminé', 0, 0, TO_DATE('2021-08-12','YYYY-MM-DD'), 300, 135
436, 'terminé', 0, 0, TO_DATE('2025-01-19','YYYY-MM-DD'), 300, 136
437, 'terminé', 0, 0, TO_DATE('2023-05-26','YYYY-MM-DD'), 300, 137
438, 'terminé', 0, 0, TO_DATE('2022-11-06','YYYY-MM-DD'), 300, 138
439, 'terminé', 0, 0, TO_DATE('2018-02-14','YYYY-MM-DD'), 300, 139
440, 'en cours', 0, 0, TO_DATE('2024-04-21','YYYY-MM-DD'), 300, 140
441, 'terminé', 0, 0, TO_DATE('2019-03-11','YYYY-MM-DD'), 300, 141
442, 'terminé', 0, 0, TO_DATE('2025-09-02','YYYY-MM-DD'), 300, 142
443, 'annulé', 0, 0, TO_DATE('2020-10-15','YYYY-MM-DD'), 300, 143
444, 'terminé', 0, 0, TO_DATE('2023-07-28','YYYY-MM-DD'), 300, 144
445, 'terminé', 0, 0, TO_DATE('2024-01-10','YYYY-MM-DD'), 300, 145
446, 'terminé', 0, 0, TO_DATE('2022-06-05','YYYY-MM-DD'), 300, 146
447, 'terminé', 0, 0, TO_DATE('2021-12-18','YYYY-MM-DD'), 300, 147
448, 'en cours', 0, 0, TO_DATE('2025-03-23','YYYY-MM-DD'), 300, 148
449, 'terminé', 0, 0, TO_DATE('2017-11-12','YYYY-MM-DD'), 300, 149
450, 'terminé', 0, 0, TO_DATE('2023-05-09','YYYY-MM-DD'), 300, 150
451, 'terminé', 0, 0, TO_DATE('2024-02-20','YYYY-MM-DD'), 300, 151
452, 'annulé', 0, 0, TO_DATE('2021-08-14','YYYY-MM-DD'), 300, 152
453, 'terminé', 0, 0, TO_DATE('2022-09-30','YYYY-MM-DD'), 300, 153
454, 'en cours', 0, 0, TO_DATE('2025-04-07','YYYY-MM-DD'), 300, 154
455, 'terminé', 0, 0, TO_DATE('2023-01-25','YYYY-MM-DD'), 300, 155
456, 'terminé', 0, 0, TO_DATE('2020-07-11','YYYY-MM-DD'), 300, 156
457, 'terminé', 0, 0, TO_DATE('2024-10-03','YYYY-MM-DD'), 300, 157
458, 'annulé', 0, 0, TO_DATE('2021-11-29','YYYY-MM-DD'), 300, 158
459, 'terminé', 0, 0, TO_DATE('2019-05-16','YYYY-MM-DD'), 300, 159
460, 'en cours', 0, 0, TO_DATE('2025-02-08','YYYY-MM-DD'), 300, 160
461, 'terminé', 0, 0, TO_DATE('2022-09-17','YYYY-MM-DD'), 300, 161
462, 'terminé', 0, 0, TO_DATE('2023-03-24','YYYY-MM-DD'), 300, 162
463, 'terminé', 0, 0, TO_DATE('2024-12-12','YYYY-MM-DD'), 300, 163
464, 'annulé', 0, 0, TO_DATE('2021-06-01','YYYY-MM-DD'), 300, 164
465, 'terminé', 0, 0, TO_DATE('2020-08-28','YYYY-MM-DD'), 300, 165
466, 'en cours', 0, 0, TO_DATE('2025-04-15','YYYY-MM-DD'), 300, 166
467, 'terminé', 0, 0, TO_DATE('2022-11-04','YYYY-MM-DD'), 300, 167
468, 'terminé', 0, 0, TO_DATE('2023-01-22','YYYY-MM-DD'), 300, 168
469, 'terminé', 0, 0, TO_DATE('2024-05-10','YYYY-MM-DD'), 300, 169
470, 'annulé', 0, 0, TO_DATE('2018-07-30','YYYY-MM-DD'), 300, 170
471, 'terminé', 0, 0, TO_DATE('2021-10-19','YYYY-MM-DD'), 300, 171
472, 'en cours', 0, 0, TO_DATE('2025-03-06','YYYY-MM-DD'), 300, 172
473, 'terminé', 0, 0, TO_DATE('2020-09-13','YYYY-MM-DD'), 300, 173
474, 'terminé', 0, 0, TO_DATE('2023-02-27','YYYY-MM-DD'), 300, 174
475, 'terminé', 0, 0, TO_DATE('2024-12-09','YYYY-MM-DD'), 300, 175
476, 'annulé', 0, 0, TO_DATE('2022-06-21','YYYY-MM-DD'), 300, 176
477, 'terminé', 0, 0, TO_DATE('2021-08-02','YYYY-MM-DD'), 300, 177
478, 'en cours', 0, 0, TO_DATE('2025-01-15','YYYY-MM-DD'), 300, 178
479, 'terminé', 0, 0, TO_DATE('2020-04-11','YYYY-MM-DD'), 300, 179
480, 'terminé', 0, 0, TO_DATE('2023-11-25','YYYY-MM-DD'), 300, 180
481, 'terminé', 0, 0, TO_DATE('2024-02-01','YYYY-MM-DD'), 300, 100
482, 'annulé', 0, 0, TO_DATE('2024-03-15','YYYY-MM-DD'), 300, 111
483, 'terminé', 0, 0, TO_DATE('2024-06-10','YYYY-MM-DD'), 300, 157
484, 'terminé', 0, 0, TO_DATE('2024-12-20','YYYY-MM-DD'), 300, 100