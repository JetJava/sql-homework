--месяц (вне зависимости от года) с максимальным количеством резюме
SELECT TO_CHAR(r.create_date, 'Month') as max_resume_month
FROM resume AS r
GROUP BY max_resume_month
ORDER BY COUNT(*) DESC
LIMIT 1;

--месяц (вне зависимости от года) с максимальным количеством вакансий
SELECT TO_CHAR(v.open_date, 'Month') as max_vacancy_month
FROM vacancy AS v
GROUP BY max_vacancy_month
ORDER BY COUNT(*) DESC
LIMIT 1;