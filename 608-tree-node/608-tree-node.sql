# Write your MySQL query statement below
SELECT id, "Root" as type FROM tree WHERE p_id IS NULL
UNION
SELECT id, "Leaf" as type FROM tree WHERE p_id IS NOT NULL AND id NOT IN (SELECT p_id FROM Tree WHERE p_id IS NOT NULL)
UNION 
SELECT id, "Inner" as type FROM tree WHERE p_id IS NOT NULL AND id IN (SELECT p_id FROM Tree WHERE p_id IS NOT NULL);