USE master
GO

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'TElECOM')
DROP DATABASE TElECOM
GO

CREATE DATABASE TElECOM
GO


CREATE TABLE Fact_transaction(
	id INT NOT NULL IDENTITY (1,1),
	imsi VARCHAR(9) NOT NULL ,
	Transaction_id INT NOT NULL,
	subscriber_id INT,
	TAC VARCHAR(8)NOT NULL,
	SNR VARCHAR(6)NOT NULL,
	imei VARCHAR(14) NULL,
	cell INT NOT NULL ,
	lac INT NOT NULL ,
	event_type VARCHAR(2) NULL,
	event_ts DATETIME NOT NULL ,
	audit_id INT NOT NULL DEFAULT (-1)

	CONSTRAINT pk_Fact_transaction_id primary key (id)
)




ALTER TABLE dbo.Fact_transaction ALTER COLUMN TAC VARCHAR(8) NOT NULL ;
ALTER TABLE dbo.Fact_transaction ALTER COLUMN SNR VARCHAR(8) not NULL ; 

 
