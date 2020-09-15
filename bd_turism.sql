CREATE TABLE Должности
(
  Код_должности INT NOT NULL,
  Наименование_должности INT NOT NULL,
  _Оклад INT NOT NULL,
  Обязанности INT NOT NULL,
  Требования INT NOT NULL,
  PRIMARY KEY (Код_должности)
);

CREATE TABLE Виды_отдыха
(
  Код_вида INT NOT NULL,
  Наименование INT NOT NULL,
  Описание INT NOT NULL,
  Ограничения INT NOT NULL,
  PRIMARY KEY (Код_вида)
);

CREATE TABLE Отели
(
  Код_отеля INT NOT NULL,
  Наименование INT NOT NULL,
  Город INT NOT NULL,
  Страна INT NOT NULL,
  Телефон INT NOT NULL,
  Адрес INT NOT NULL,
  Количество_звёзд INT NOT NULL,
  Контактное_лицо INT NOT NULL,
  PRIMARY KEY (Код_отеля)
);

CREATE TABLE Дополнительные_услуги
(
  Код_услуги INT NOT NULL,
  Наименование INT NOT NULL,
  Описание,_Цена INT NOT NULL,
  PRIMARY KEY (Код_услуги)
);

CREATE TABLE Клиенты
(
  ФИО INT NOT NULL,
  Дата_рождения INT NOT NULL,
  Код_клиента INT NOT NULL,
  Пол INT NOT NULL,
  Телефон INT NOT NULL,
  Адрес INT NOT NULL,
  Паспортные_данные INT NOT NULL,
  PRIMARY KEY (Код_клиента)
);

CREATE TABLE Сотрудники
(
  Код_сотрудника INT NOT NULL,
  ФИО INT NOT NULL,
  Возраст INT NOT NULL,
  Пол INT NOT NULL,
  Телефон INT NOT NULL,
  Паспортные_данные INT NOT NULL,
  Код_должности INT NOT NULL,
  Адрес INT NOT NULL,
  Код_должности INT NOT NULL,
  PRIMARY KEY (Код_сотрудника),
  FOREIGN KEY (Код_должности) REFERENCES Должности(Код_должности),
  UNIQUE (Паспортные_данные)
);

CREATE TABLE Путёвки
(
  Дата_начала INT NOT NULL,
  Дата_окончания INT NOT NULL,
  Продолжительность INT NOT NULL,
  Код_отеля INT NOT NULL,
  Код_услуги_1 INT NOT NULL,
  Код_услуги_2 INT NOT NULL,
  Код_вида INT NOT NULL,
  Код_клиента INT NOT NULL,
  Код_услуги_3 INT NOT NULL,
  Код_сотрудника INT NOT NULL,
  Отметка_о_бронировании INT NOT NULL,
  Отметка_об_оплате INT NOT NULL,
  Код_клиента INT NOT NULL,
  Код_отеля INT NOT NULL,
  Код_сотрудника INT NOT NULL,
  Код_услуги INT NOT NULL,
  Код_вида INT NOT NULL,
  PRIMARY KEY (Код_клиента),
  FOREIGN KEY (Код_клиента) REFERENCES Клиенты(Код_клиента),
  FOREIGN KEY (Код_отеля) REFERENCES Отели(Код_отеля),
  FOREIGN KEY (Код_сотрудника) REFERENCES Сотрудники(Код_сотрудника),
  FOREIGN KEY (Код_услуги) REFERENCES Дополнительные_услуги(Код_услуги),
  FOREIGN KEY (Код_вида) REFERENCES Виды_отдыха(Код_вида),
  UNIQUE (Код_сотрудника)
);