
CREATE DATABASE online_banking;
USE online_banking;



CREATE TABLE [dbo].[account] (
    [id]             INT          IDENTITY (1, 1) NOT NULL,
    [customer_id]    INT          NOT NULL,
    [account_number] VARCHAR (50) NOT NULL,
    [balance]        INT          NOT NULL,
    [status]         VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED ([id] ASC)
);
CREATE TABLE [dbo].[account_activity] (
    [id]          INT          IDENTITY (1, 1) NOT NULL,
    [customer_id] INT          NOT NULL,
    [type]        VARCHAR (50) NOT NULL,
    [amount]      INT          NOT NULL,
    CONSTRAINT [PK_account_activity] PRIMARY KEY CLUSTERED ([id] ASC)
);
CREATE TABLE [dbo].[customer] (
    [id]            INT          IDENTITY (1, 1) NOT NULL,
    [first_name]    VARCHAR (50) NOT NULL,
    [last_name]     VARCHAR (50) NOT NULL,
    [email]         VARCHAR (50) NOT NULL,
    [phone]         VARCHAR (50) NOT NULL,
    [password]      VARCHAR (50) NOT NULL,
    [date_of_birth] DATE         NOT NULL,
    [gender]        VARCHAR (50) NOT NULL,
    [city]          VARCHAR (50) NOT NULL,
    [state]         VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED ([id] ASC)
);
CREATE TABLE [dbo].[payee] (
    [id]             INT          IDENTITY (1001, 1) NOT NULL,
    [full_name]      VARCHAR (50) NOT NULL,
    [account_number] VARCHAR (50) NOT NULL,
    [bank_code]      VARCHAR (50) NOT NULL,
    [city]           VARCHAR (50) NOT NULL,
    [state]          VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_payee] PRIMARY KEY CLUSTERED ([id] ASC)
);

CREATE TABLE [dbo].[payment_history] (
    [id]          INT      IDENTITY (100001, 1) NOT NULL,
    [customer_id] INT      NOT NULL,
    [payee_id]    INT      NOT NULL,
    [amount]      INT      NOT NULL,
    [date_time]   DATETIME NOT NULL,
    CONSTRAINT [PK_payment_history] PRIMARY KEY CLUSTERED ([id] ASC)
);




