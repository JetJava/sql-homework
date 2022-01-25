--по моему мнению дополнительные индексы нужны в соновном на вакансиях и резюме, т.к. именно их ищут и сортируют

--индексы вакансий
CREATE INDEX vacancy_date_index ON vacancy (open_date); --нужен для ранжирования по дате, например, только новые
CREATE INDEX vacancy_position_index ON vacancy (position_name); --ускорим поиск по позиции
CREATE INDEX vacancy_title_index ON vacancy (title); --ускорим поиск по названию
CREATE INDEX vacancy_compensation_index ON vacancy (compensation_from, compensation_to); --например, для аналитики

--индексы резюме
CREATE INDEX resume_date_index ON resume (create_date); --нужен для ранжирования по дате, например, только новые
CREATE INDEX resume_experience_index ON resume (experience); --ускорим поиск по опыту (ключевые слова)
