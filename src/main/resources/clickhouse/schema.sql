CREATE DATABASE IF NOT EXISTS Bank;

CREATE TABLE IF NOT EXISTS Bank.bank
(
    TerbankID Int32,
    TerbankName String,
    TerbankBik Int32,
    City String
) ENGINE = MergeTree()
    ORDER BY TerbankID;

CREATE TABLE IF NOT EXISTS Bank.account_status
(
    AccountStatusID Int32,
    AccountStatusName String
) ENGINE = MergeTree()
    ORDER BY AccountStatusID;

CREATE TABLE IF NOT EXISTS Bank.currency
(
    CurrencyID Int32,
    CurrencyName String
) ENGINE = MergeTree()
    ORDER BY CurrencyID;

CREATE TABLE IF NOT EXISTS Bank.card_status
(
    CardStatusID Int32,
    CardStatusName String,
    Sign Int8
) ENGINE = CollapsingMergeTree(Sign)
    ORDER BY CardStatusID;

CREATE TABLE IF NOT EXISTS Bank.card_type
(
    CardTypeID Int32,
    CardTypeName String
) ENGINE = MergeTree()
    ORDER BY CardTypeID;

CREATE TABLE IF NOT EXISTS Bank.document_type
(
    DocumentTypeID Int32,
    DocumentTypeName String
) ENGINE = MergeTree()
    ORDER BY DocumentTypeID;

CREATE TABLE IF NOT EXISTS Bank.document
(
    DocumentID Int32,
    DateStart Date,
    IssueOrganization String,
    IssueCode String,
    IsActive UInt8,
    DocumentTypeID Int32
) ENGINE = MergeTree()
    ORDER BY DocumentID;

CREATE TABLE IF NOT EXISTS Bank.client
(
    ClientID Int32,
    FirstName String,
    SecondName String,
    Patronymic String,
    Birthday Date,
    ClientManager Int32
) ENGINE = MergeTree()
    ORDER BY ClientID;


CREATE TABLE IF NOT EXISTS Bank.account
(
    AccountNumber Int32,
    ClientID Int32,
    TerbankID Int32,
    CurrencyID Int32,
    AccountStatusID Int32,
    Balance Int32
) ENGINE = MergeTree()
    ORDER BY AccountNumber;

CREATE TABLE IF NOT EXISTS Bank.card
(
    CardNumber Int32,
    AccountNumber Int32,
    DateStart Date,
    DateEnd Date,
    CVC Int32,
    CardTypeID Int32,
    CardStatusID Int32,
    Balance Int32
) ENGINE = MergeTree()
    ORDER BY CardNumber;
