SELECT a.area_name                                    AS area,
       AVG(compensation_from)                         AS avg_compesation_from,
       AVG(compensation_to)                           AS avg_compesation_to,
       AVG((compensation_to + compensation_from) / 2) AS average_from_to
FROM area AS a
         JOIN employer e on a.id = e.area_id
         JOIN vacancy v on e.id = v.employer_id
GROUP BY a.area_name
ORDER BY a.area_name;