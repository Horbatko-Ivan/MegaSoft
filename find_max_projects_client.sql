\c MegaSoft;

SELECT name,
       COUNT(*) AS project_count
FROM client
         JOIN
     project ON project.client_id = client.id
GROUP BY name
ORDER BY COUNT(*) DESC
LIMIT 1;
