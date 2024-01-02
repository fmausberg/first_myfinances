DROP DATABASE IF EXISTS my_finances;

CREATE DATABASE my_finances;

CREATE TABLE partner (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	last_name VARCHAR(255) NOT NULL,
	first_name VARCHAR(255)
);

CREATE TABLE property (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	description TEXT,
	runtime INT,
	value_original DECIMAL(10, 2) NOT NULL,
	currency_value_original VARCHAR(3),
	value_sold DECIMAL(10, 2),
	currency_value_sold VARCHAR(3)
);

CREATE TABLE account (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	position INT,
	master_id BIGINT,
	acc_name VARCHAR(255),
	FOREIGN KEY (master_id) REFERENCES account(id)
);

CREATE TABLE transaction(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	account_id BIGINT,
	value_original DECIMAL(10, 2),
	currency_value_original VARCHAR(3),
	date DATE,
	reference VARCHAR(255),
	partner VARCHAR(255),
	FOREIGN KEY (account_id) REFERENCES account(id)
);

CREATE TABLE sentencematurity (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

CREATE TABLE sentence (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	description VARCHAR(255),
	sentencematurity_id INT,
	FOREIGN KEY (sentencematurity_id) REFERENCES sentencematurity(id)
);

CREATE TABLE word (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	sentence_id BIGINT,
	account_id BIGINT,
	date DATE,
	value DECIMAL(10, 2),
	currency_value VARCHAR(3),
	partner_id BIGINT,
	FOREIGN KEY (sentence_id) REFERENCES sentence(id),
	FOREIGN KEY (account_id) REFERENCES account(id),
	FOREIGN KEY (partner_id) REFERENCES partner(id)
);

CREATE TABLE trf_transaction_sentence (
	sentence_id BIGINT,
	transaction_id BIGINT,
	PRIMARY KEY (sentence_id, transaction_id)
);
