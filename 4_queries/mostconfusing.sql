SELECT assignments.id, assignments.name, duration as day, chapter, count(*) as total_requests
FROM assistance_requests
JOIN assignments ON assignment_id=assignments.id
GROUP BY assignments.id
ORDER BY count(*) DESC;