-- Script liste_ora_triggers.sql
-- Liste tous les triggers définis, classés par nom de table

SELECT triggers.table_name, triggers.trigger_name,triggers.trigger_type,triggers.triggering_event,triggers.status,triggers.description
FROM user_triggers triggers
ORDER BY
    triggers.table_name, triggers.trigger_name;