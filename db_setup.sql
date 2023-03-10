-- [5/2/2023] Learned that django models automatically create tables once makemigrations and migrate is run,
-- so all these were unnecessary, but still can use for reference

-- USE personal_finance_project;

-- CREATE TABLE User (
-- 	User_ID INT NOT NULL auto_increment,
--     User_Email VARCHAR(255) NOT NULL,
--     User_CreatedDateTime DATETIME NOT NULL,
--     PRIMARY KEY (User_ID)
-- );

-- CREATE TABLE Income (
-- 	Income_ID INT NOT NULL auto_increment,
--     Income_UserID INT NOT NULL,
--     Income_ShortDay VARCHAR(3) NOT NULL,
--     Income_DateTime DATETIME NOT NULL,
--     Income_Name VARCHAR(255) NOT NULL,
--     Income_Amount DECIMAL(15,2) NOT NULL,
--     Income_IsMain TINYINT NOT NULL,
--     Income_CreatedDateTime DATETIME NOT NULL,
--     Income_IsDelete TINYINT NOT NULL,
--     PRIMARY KEY (Income_ID),
--     FOREIGN KEY (Income_UserID) REFERENCES User(User_ID)
-- );

-- CREATE TABLE Expense (
-- 	Expense_ID INT NOT NULL auto_increment,
--     Expense_UserID INT NOT NULL,
--     Expense_ShortDay VARCHAR(3) NOT NULL,
--     Expense_DateTime DATETIME NOT NULL,
--     Expense_Name VARCHAR(255) NOT NULL,
--     Expense_Amount DECIMAL(15,2) NOT NULL,
--     Expense_IsNecessary TINYINT NOT NULL,
--     Expense_CreatedDateTime DATETIME NOT NULL,
--     Expense_IsDelete TINYINT NOT NULL,
--     PRIMARY KEY (Expense_ID),
--     FOREIGN KEY (Expense_UserID) REFERENCES User(User_ID)
-- );

-- CREATE TABLE Debtor (
-- 	Debtor_ID INT NOT NULL auto_increment,
--     Debtor_UserID INT NOT NULL,
--     Debtor_Name VARCHAR(255) NOT NULL,
--     Debtor_PhoneNo VARCHAR(50), 
--     Debtor_Amount DECIMAL(15,2) NOT NULL,
--     Debtor_CreatedDateTime DATETIME NOT NULL,
--     Debtor_IsSettled TINYINT NOT NULL,
--     PRIMARY KEY (Debtor_ID),
--     FOREIGN KEY (Debtor_UserID) REFERENCES User(User_ID)
-- );

-- CREATE TABLE Creditor (
-- 	Creditor_ID INT NOT NULL auto_increment,
--     Creditor_UserID INT NOT NULL,
--     Creditor_Name VARCHAR(255) NOT NULL,
--     Creditor_PhoneNo VARCHAR(50), 
--     Creditor_Amount DECIMAL(15,2) NOT NULL,
--     Creditor_CreatedDateTime DATETIME NOT NULL,
--     Creditor_IsSettled TINYINT NOT NULL,
--     PRIMARY KEY (Creditor_ID),
--     FOREIGN KEY (Creditor_UserID) REFERENCES User(User_ID)
-- );