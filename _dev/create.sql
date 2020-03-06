CREATE TABLE country(
    id SERIAL PRIMARY KEY,
    name VARCHAR(74)
);

CREATE TABLE currency(
    id SERIAL PRIMARY KEY,
    country_id INT REFERENCES country(id),
    code VARCHAR(3)
);

CREATE TABLE big_mac(
    id SERIAL PRIMARY KEY,
    dd DATE,
    local_price FLOAT,
    currency_id INT REFERENCES currency(id)
);

CREATE TABLE exchange_rate(
    id SERIAL PRIMARY KEY,
    currency_id INT REFERENCES currency(id),
    dollar_exchange FLOAT,
    dd DATE
);

CREATE TABLE iso_a3(
    id SERIAL PRIMARY KEY,
    country_id INT REFERENCES country(id),
    iso_a3 VARCHAR(3)
);

CREATE TABLE happiness(
    id SERIAL PRIMARY KEY,
    country_id INT REFERENCES country(id),
    score FLOAT,
    dd DATE
);

CREATE TABLE beer(
    id SERIAL PRIMARY KEY,
    country_id INT REFERENCES country(id),
    score INT,
    dd DATE
);

CREATE TABLE liquor(
    id SERIAL PRIMARY KEY,
    country_id INT REFERENCES country(id),
    score INT,
    dd DATE
);

CREATE TABLE wine(
    id SERIAL PRIMARY KEY,
    country_id INT REFERENCES country(id),
    score INT,
    dd DATE
);

CREATE TABLE female_pop(
    id SERIAL PRIMARY KEY,
    country_id INT REFERENCES country(id),
    pop INT
);

CREATE TABLE total_pop(
    id SERIAL PRIMARY KEY,
    country_id INT REFERENCES country(id),
    pop INT
);