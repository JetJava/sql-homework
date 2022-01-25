--соискатель
CREATE TABLE client
(
    id           SERIAL PRIMARY KEY NOT NULL,
    first_name   VARCHAR(20)        NOT NULL,
    last_name    VARCHAR(20)        NOT NULL,
    email        VARCHAR(40)        NOT NULL,
    phone_number VARCHAR(15)        NOT NULL
);

--регион
CREATE TABLE area
(
    id        SERIAL PRIMARY KEY NOT NULL,
    area_name VARCHAR(20)        NOT NULL
);

--работодатель
CREATE TABLE employer
(
    id      SERIAL PRIMARY KEY NOT NULL,
    name    TEXT               NOT NULL,
    area_id INTEGER            NOT NULL references area (id)
);

--вакансия
CREATE TABLE vacancy
(
    id                 SERIAL PRIMARY KEY NOT NULL,
    open_date          DATE               NOT NULL,
    employer_id        INTEGER            NOT NULL references employer (id),
    title              TEXT               NOT NULL,
    position_name      VARCHAR(40),
    compensation_from  INTEGER,
    compensation_to    INTEGER,
    compensation_gross BOOLEAN
);

--резюме
CREATE TABLE resume
(
    id                   SERIAL PRIMARY KEY NOT NULL,
    client_id            INTEGER            NOT NULL references client (id),
    CREATE_date          DATE               NOT NULL,
    desired_compensation INTEGER,
    experience           TEXT,
    education            TEXT
);

--отклик
CREATE TABLE respond
(
    vacancy_id   INTEGER NOT NULL references vacancy (id),
    resume_id    INTEGER NOT NULL references resume (id),
    respond_date date    NOT NULL
);