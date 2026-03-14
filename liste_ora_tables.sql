SELECT tables.table_name, tables.num_rows AS nb_lignes, COUNT(colonnes.column_name) AS nb_colonnes
FROM user_tables tables
JOIN user_tab_columns colonnes ON tables.table_name = colonnes.table_name
GROUP BY tables.table_name, tables.num_rows
ORDER BY tables.table_name;