CREATE TABLE IF NOT EXISTS email(
    id      UUID         NOT NULL PRIMARY KEY,
    email   VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS student(
    id      UUID         NOT NULL PRIMARY KEY,
    name    VARCHAR(100) NOT NULL,
    course  VARCHAR(100) NOT NULL,
    email   UUID REFERENCES email(id)
);