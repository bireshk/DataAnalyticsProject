CREATE TABLE Area (
  area_code INT PRIMARY KEY NOT NULL UNIQUE,
  area VARCHAR
);

CREATE TABLE Item (
  item_code INT PRIMARY KEY NOT NULL UNIQUE,
  item VARCHAR
);

CREATE TABLE Element (
  element_code INT PRIMARY KEY NOT NULL UNIQUE,
  element VARCHAR
);

CREATE TABLE Emission (
  area_code INT NOT NULL,
  item_code INT NOT NULL,
  element_code INT NOT NULL,
  emission_year CHAR,
  emission_value FLOAT,
  FOREIGN KEY (area_code) REFERENCES Area (area_code),
  FOREIGN KEY (item_code) REFERENCES Item (item_code),
  FOREIGN KEY (element_code) REFERENCES Element (element_code),
  PRIMARY KEY (area_code, item_code, element_code, emission_year)
);