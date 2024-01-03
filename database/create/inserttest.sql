INSERT INTO partner (last_name, first_name)
VALUES
	('DKV Mobility', NULL),
	('Deres', 'Leona');

/*
INSERT INTO property (name, description, runtime, value_original, value_sold)
VALUES 
	('Neusser Weyhe 27', NULL, 400, 136000.00, NULL),
	('Gartenstraße 33a', NULL, 400, 260000.00, NULL);
*/
	
INSERT INTO account (id, position, master_id, acc_name)
VALUES
	(1, 1, NULL, 'Cash and Cash Equivalents'),
	(2, 2, NULL, 'Other current Assets'),
	(3, 3, NULL, 'Non-Current Assets'),
	(4, 4, NULL, 'Equity'),
	(5, 5, NULL, 'Short Term Liability'),
	(6, 6, NULL, 'Long Term Liability'),
	(7, 7, NULL, 'Holdings'),
	(8, 7, NULL, 'Income'),
	(9, 8, NULL, 'Expenses'),
	(10, 1, 1, 'Cash'),
	(11, 2, 1, 'Cash Equivalents'),
	(12, 1, 11, 'Sparkasse Giro Konto'),
	(13, 2, 11, 'Paypal Account'),
	(14, 1, 8, 'Present'),
	(15, 1, 9, 'Present'),
	(16, 1, 3, 'Deka Depot'),
	(17, 1, 2, 'Accounts Receivables'),
	(18, 2, 2, 'Deffered Items'),
	(19, 2, 9, 'Depreciation'),
	(20, 2, 8, 'Salary');

INSERT INTO transaction (account_id, value_original, date, reference, partner)
VALUES
	(12, 100.00, '2023-01-01', 'Gehalt 01/23', 'DKV Euroservice GmbH & Co. KG'),
	(12, 100.00, '2023-02-01', 'Gehalt 02/23', 'DKV Euroservice GmbH & Co. KG'),
	(12, 100.00, '2023-03-01', 'Gehalt 03/23', 'DKV Euroservice GmbH & Co. KG');
	
INSERT INTO sentencematurity (id, name)
VALUES
	(1, 'booked'),
	(2, 'anticipated');
	
INSERT INTO sentence (id, description, sentencematurity_id)
VALUES
	(1, '100 Salary January', 1),
	(2, '100 Salary Februara', 1),
	(3, '100 Salary March', 1);
	
INSERT INTO word (sentence_id, account_id, date, value, currency_value, partner_id)
VALUES
	(1, 4, '2023-01-01', 100.00, 'EUR', NULL),
	(1, 12, '2023-01-01', 100.00, 'EUR', NULL),
	(1, 20, '2023-01-01', 100.00, 'EUR', 1),
	(2, 4, '2023-02-01', 100.00, 'EUR', NULL),
	(2, 12, '2023-02-01', 100.00, 'EUR', NULL),
	(2, 20, '2023-02-01', 100.00, 'EUR', 1),
	(3, 4, '2023-03-01', 100.00, 'EUR', NULL),
	(3, 12, '2023-03-01', 100.00, 'EUR', NULL),
	(3, 20, '2023-03-01', 100.00, 'EUR', 1);

INSERT INTO trf_transaction_sentence (sentence_id, transaction_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3);
