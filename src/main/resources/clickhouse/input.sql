INSERT INTO Bank.bank (TerbankID, TerbankName, TerbankBik, City) VALUES (1, 'ПАО СБЕРБАНК', '044525225', 'Москва');
INSERT INTO Bank.bank (TerbankID, TerbankName, TerbankBik, City) VALUES (2, 'ПОВОЛЖСКИЙ БАНК ПАО СБЕРБАНК', '043601607', 'Самара');
INSERT INTO Bank.bank (TerbankID, TerbankName, TerbankBik, City) VALUES (3, 'Уральский ПАО Сбербанк', '046577674', 'Екатеринбург');
INSERT INTO Bank.bank (TerbankID, TerbankName, TerbankBik, City) VALUES (4, 'АРХАНГЕЛЬСКОЕ ОТДЕЛЕНИЕ N 8637 ПАО СБЕРБАНК', '041117601', 'Архангельск');
INSERT INTO Bank.bank (TerbankID, TerbankName, TerbankBik, City) VALUES (5, 'АСТРАХАНСКОЕ ОТДЕЛЕНИЕ N8625 ПАО СБЕРБАНК', '041203602', 'Астрахань');
INSERT INTO Bank.bank (TerbankID, TerbankName, TerbankBik, City)  VALUES (6, 'БЕЛГОРОДСКОЕ ОТДЕЛЕНИЕ N8592 ПАО СБЕРБАНК', '041403633', 'Белгород');
INSERT INTO Bank.bank (TerbankID, TerbankName, TerbankBik, City) VALUES (7, 'БРЯНСКОЕ ОТДЕЛЕНИЕ N8605 ПАО СБЕРБАНК', '041501601', 'Брянск');

INSERT INTO Bank.account_status (AccountStatusID, AccountStatusName) VALUES (1, 'Active');
INSERT INTO Bank.account_status (AccountStatusID, AccountStatusName) VALUES (2, 'Closed');
INSERT INTO Bank.account_status (AccountStatusID, AccountStatusName) VALUES (3, 'Arrested');

INSERT INTO Bank.currency (CurrencyID, CurrencyName) VALUES (1, 'RUB');
INSERT INTO Bank.currency (CurrencyID, CurrencyName) VALUES (2, 'USD');
INSERT INTO Bank.currency (CurrencyID, CurrencyName) VALUES (3, 'EUR');
INSERT INTO Bank.currency (CurrencyID, CurrencyName) VALUES (4, 'TRY');
INSERT INTO Bank.currency (CurrencyID, CurrencyName) VALUES (5, 'GBP');
INSERT INTO Bank.currency (CurrencyID, CurrencyName) VALUES (6, 'JPY');
INSERT INTO Bank.currency (CurrencyID, CurrencyName) VALUES (7, 'AMD');
INSERT INTO Bank.currency (CurrencyID, CurrencyName) VALUES (8, 'CNY');

INSERT INTO Bank.card_status (CardStatusID, CardStatusName) VALUES (1, 'Active');
INSERT INTO Bank.card_status (CardStatusID, CardStatusName) VALUES (2, 'Closed');
INSERT INTO Bank.card_status (CardStatusID, CardStatusName) VALUES (3, 'Arrested');
INSERT INTO Bank.card_status (CardStatusID, CardStatusName) VALUES (4, 'Limited');

INSERT INTO Bank.card_type (CardTypeID, CardTypeName) VALUES (1, 'Дебетовая');
INSERT INTO Bank.card_type (CardTypeID, CardTypeName) VALUES (2, 'Кредитная');
INSERT INTO Bank.card_type (CardTypeID, CardTypeName) VALUES (3, 'Международная');
INSERT INTO Bank.card_type (CardTypeID, CardTypeName) VALUES (4, 'Виртуальная');

INSERT INTO Bank.document_type (DocumentTypeID, DocumentTypeName) VALUES (1, 'Паспорт РФ');
INSERT INTO Bank.document_type (DocumentTypeID, DocumentTypeName) VALUES (2, 'Общегражданский заграничный паспорт');
INSERT INTO Bank.document_type (DocumentTypeID, DocumentTypeName) VALUES (3, 'Паспорт моряка');
INSERT INTO Bank.document_type (DocumentTypeID, DocumentTypeName) VALUES (4, 'Удостоверение личности военнослужащего или военный билет');

INSERT INTO Bank.document (DocumentID, DateStart, IssueOrganization, IssueCode, IsActive, DocumentTypeID) VALUES (1, '2015-01-01', 'МВД Москвы', '414-532', 1, 1);
INSERT INTO Bank.document (DocumentID, DateStart, IssueOrganization, IssueCode, IsActive, DocumentTypeID) VALUES (2,'2015-01-01', 'МВД Самары', '777-777', 1, 1);
INSERT INTO Bank.document (DocumentID, DateStart, IssueOrganization, IssueCode, IsActive, DocumentTypeID) VALUES (3, '2015-01-01', 'МВД Санкт-Петербурга', '101-364', 1, 1);

INSERT INTO Bank.client (ClientID, FirstName, SecondName, Patronymic, Birthday, ClientManager) VALUES (1, 'Калинин','Саша','Александрович', '1999-06-20', 1);
INSERT INTO Bank.client (ClientID, FirstName, SecondName, Patronymic, Birthday, ClientManager) VALUES (2, 'Власов','Гоша','Владимирович', '1999-06-20', 1);
INSERT INTO Bank.client (ClientID, FirstName, SecondName, Patronymic, Birthday, ClientManager) VALUES (3, 'Тышкун','Андрей','Юрьевич', '1999-06-20', 1);

INSERT INTO Bank.account (AccountNumber, ClientID, TerbankID, CurrencyID, AccountStatusID, Balance) VALUES (1, 1,1,1, 1, 2000);
INSERT INTO Bank.account (AccountNumber, ClientID, TerbankID, CurrencyID, AccountStatusID, Balance) VALUES (2, 2,2,1, 1, 50000);
INSERT INTO Bank.account (AccountNumber, ClientID, TerbankID, CurrencyID, AccountStatusID, Balance) VALUES (3, 3,3,1, 1, 43252);

INSERT INTO Bank.card (CardNumber, AccountNumber, DateStart, DateEnd, CVC, CardTypeID, CardStatusID, Balance) VALUES (1, 1,'2020-01-01','2021-01-01', 341, 1, 1, 1000);
INSERT INTO Bank.card (CardNumber, AccountNumber, DateStart, DateEnd, CVC, CardTypeID, CardStatusID, Balance) VALUES (2, 2,'2020-01-01','2021-01-01', 341, 1, 1, 124135);
INSERT INTO Bank.card (CardNumber, AccountNumber, DateStart, DateEnd, CVC, CardTypeID, CardStatusID, Balance) VALUES (3, 3,'2020-01-01','2021-01-01', 341, 1, 1, 4134324);