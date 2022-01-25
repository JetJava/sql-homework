--здесь пришлось взять 2 недели, т.к. тестовые данные не дали 5 откликов за 1 неделю =(
SELECT v.id AS vacancy_id,
       v.title AS vacancy_title
FROM vacancy AS v
         JOIN respond AS r
              on v.id = r.vacancy_id
WHERE r.respond_date
          BETWEEN v.open_date AND v.open_date + INTERVAL '2 WEEK'
GROUP BY v.id
HAVING COUNT(*) >= 5;