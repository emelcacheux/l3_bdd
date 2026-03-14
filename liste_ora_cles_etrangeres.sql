SELECT colonnes_source.table_name AS table_contrainte, colonnes_source.column_name AS colonne_contrainte, colonnes_referee.table_name AS table_reference, colonnes_referee.column_name AS colonne_reference, contraintes.constraint_name AS nom_contrainte
FROM user_cons_columns colonnes_source
JOIN user_constraints contraintes ON colonnes_source.constraint_name = contraintes.constraint_name
JOIN user_cons_columns colonnes_referee ON contraintes.r_constraint_name = colonnes_referee.constraint_name
WHERE contraintes.constraint_type = 'R'
ORDER BY colonnes_source.table_name, colonnes_source.column_name;