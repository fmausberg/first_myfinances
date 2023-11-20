DROP DATABASE IF EXISTS my_finances;

CREATE DATABASE my_finances;

CREATE TABLE partner (
	id INT AUTO_INCREMENT PRIMARY KEY,
	last_name VARCHAR(255) NOT NULL,
	first_name VARCHAR(255)
);

CREATE TABLE property (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	description TEXT,
	runtime INT,
	value_original DECIMAL(10, 2) NOT NULL,
	currency_value_original VARCHAR(3),
	value_sold DECIMAL(10, 2),
	currency_value_sold VARCHAR(3)
);

CREATE TABLE account (
	id INT AUTO_INCREMENT PRIMARY KEY,
	position INT,
	master_id INT,
	acc_name VARCHAR(255),
	FOREIGN KEY (master_id) REFERENCES account(id)
);

CREATE TABLE transaction(
	id INT AUTO_INCREMENT PRIMARY KEY,
	account_id INT,
	value_original DECIMAL(10, 2),
	currency_value_original VARCHAR(3),
	date DATE,
	reference VARCHAR(255),
	partner VARCHAR(255),
	FOREIGN KEY (account_id) REFERENCES account(id)
);

CREATE TABLE sentencematurity (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

CREATE TABLE sentence (
	id INT AUTO_INCREMENT PRIMARY KEY,
	description VARCHAR(255),
	sentencematurity_id INT,
	FOREIGN KEY (sentencematurity_id) REFERENCES sentencematurity(id)
);

CREATE TABLE word (
	id INT AUTO_INCREMENT PRIMARY KEY,
	sentence_id INT,
	account_id INT,
	date DATE,
	value DECIMAL(10, 2),
	currency_value VARCHAR(3),
	partner_id INT,
	FOREIGN KEY (sentence_id) REFERENCES sentence(id),
	FOREIGN KEY (account_id) REFERENCES account(id),
	FOREIGN KEY (partner_id) REFERENCES partner(id)
);

CREATE TABLE trf_transaction_sentence (
	sentence_id INT,
	transaction_id INT,
	PRIMARY KEY (sentence_id, transaction_id)
);
