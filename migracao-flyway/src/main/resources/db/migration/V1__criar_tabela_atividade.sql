CREATE TABLE atividade (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(50) NOT NULL,
	descricao VARCHAR(255),
	data_cadastro DATETIME NOT NULL,
	data_inicio DATETIME,
	data_conclusao DATETIME
)engine=InnoDB;