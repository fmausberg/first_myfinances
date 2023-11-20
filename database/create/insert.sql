INSERT INTO partner (last_name, first_name)
VALUES
	('Deres', 'Leona'),
	('Henkel', 'Spencer'),
	('Neubersch', 'Theresa'),
	('Drawe', 'Diana'),
	('McDonalds', NULL),
	('Sparkasse', NULL),
	('Paypal', NULL),
	('Mausberg', 'Paul'),
	('Neusser Weyhe 27', NULL);

INSERT INTO property (name, description, runtime, value_original, value_sold)
VALUES 
	('Neusser Weyhe 27', NULL, 400, 136000.00, NULL),
	('Gartenstraße 33a', NULL, 400, 260000.00, NULL);
	
INSERT INTO account (id, position, master_id, acc_name)
VALUES
	(1, 1, NULL, 'Cash and Cash Equivalents'),
	(2, 2, NULL, 'Other current Assets'),
	(3, 3, NULL, 'Non-Current Assets'),
	(4, 4, NULL, 'Equity'),
	(5, 5, NULL, 'Short Term Liability'),
	(6, 6, NULL, 'Long Term Liability'),
	(7, 7, NULL, 'Income'),
	(8, 8, NULL, 'Expenses'),
	(9, 1, 1, 'Cash'),
	(10, 2, 1, 'Cash Equivalents'),
	(11, 1, 10, 'Sparkasse Giro Konto'),
	(12, 2, 10, 'Paypal Account'),
	(13, 1, 7, 'Present'),
	(14, 1, 8, 'Present'),
	(15, 1, 3, 'Deka Depot'),
	(16, 1, 2, 'Accounts Receivables'),
	(17, 2, 2, 'Deffered Items'),
	(18, 2, 8, 'Depreciation');

INSERT INTO transaction (account_id, value_original, date, reference, partner)
VALUES
	(11, 100.00, '2023-01-01', 'Herzlichen Glückwunsch', 'Dr. Paul Mausberg'),
	(11, -20.00, '2023-01-05', 'Bargeldabhebung', NULL),
	(11, -30.00, '2023-01-10', 'Paypal Konto Auflanden', 'Felix Mausberg'),
	(12, 30.00, '2023-01-11', 'Aufladung', 'Felix Mausberg'),
	(12, 9.99, '2023-05-03', 'Geschenk', 'Mausbergs');
	
INSERT INTO sentencematurity (id, name)
VALUES
	(1, 'booked'),
	(2, 'anticipated');
	
INSERT INTO sentence (description, sentencematurity_id)
VALUES
	('100 income by dad on sparkasse', 1),
	('20 cashen', 1),
	('30 shift to paypal', 1),
	('30 arrive at paypal', 1),
	('5 present cash to leona', 1),
	('7.5 lent cash to spencer', 1),
	('33 present to dad but not paid', 1),
	('12 present payout to dad from sparkasse', 1),
	('100% loan of Sparkasse to Neubersch', 1);
	
INSERT INTO word (sentence_id, account_id, date, value, currency_value, partner_id)
VALUES
	(1, 4, '2023-01-01', 100.00, 'EUR', NULL),
	(1, 11, '2023-01-01', 100.00, 'EUR', NULL),
	(1, 13, '2023-01-01', 100.00, 'EUR', 8),
	(2, 11, '2023-01-05', -20.00, 'EUR', NULL),
	(2, 9, '2023-01-05', 20.00, 'EUR', NULL),
	(3, 11, '2023-01-10', -30.00, 'EUR', NULL),
	(3, 16, '2023-01-10', 30.00, 'EUR', 7),
	(4, 16, '2023-01-11', -30.00, 'EUR', 7),
	(4, 12, '2023-01-11', 30.00, 'EUR', NULL),
	(5, 9, '2023-01-15', -5.00, 'EUR', NULL),
	(5, 14, '2023-01-15', -5.00, 'EUR', 1),
	(5, 4, '2023-01-15', -5.00, 'EUR', NULL),
	(6, 9, '2023-02-03', -7.50, 'EUR', NULL),
	(6, 16, '2023-02-03', 7.5, 'EUR', 2),
	(7, 14, '2023-03-02', -33.00, 'EUR', 8),
	(7, 5, '2023-03-02', 33, 'EUR', 8),
	(7, 4, '2023-03-02', -33, 'EUR', NULL),
	(8, 5, '2023-04-01', -12, 'EUR', 8),
	(8, 11, '2023-04-01', -12, 'EUR', NULL),
	(9, 6, '2023-06-15', 260000, 'EUR', 6),
	(9, 17, '2023-06-25', 260000, 'EUR', 3),
	(10, 17, '2023-07-01', 260000, 'EUR', 3),
	(10, 3, '2023-07-01', 260000, 'EUR', 9),
	(11, 6, '2023-07-31', -520, 'EUR', 9),
	(11, 12, '2023-07-31', -520, 'EUR', 9),
	(11, 4, '2023-07-31', -520, 'EUR', NULL);

INSERT INTO trf_transaction_sentence (sentence_id, transaction_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4);
