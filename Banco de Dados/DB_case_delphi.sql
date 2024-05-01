CREATE DATABASE case_delphi;

CREATE TABLE case_delphi.categoria (
	codcateg INT auto_increment NOT NULL,
	descricaocateg varchar(100) NULL,
	CONSTRAINT produto_pk PRIMARY KEY (codcateg)
)

CREATE TABLE case_delphi.produto (
	codprod INT auto_increment NOT NULL,
	nomeprod varchar(100) NULL,
	codcateg INT NOT NULL,
	preco DOUBLE NULL,
	ultpreco DOUBLE NULL,
	datacadastro DATETIME NULL,
	dataalteracao DATETIME NULL,
	CONSTRAINT produto_pk PRIMARY KEY (codprod),
	CONSTRAINT produto_categoria_fk FOREIGN KEY (codcateg) REFERENCES case_delphi.categoria(codcateg)
)

CREATE TABLE case_delphi.usuario (
	coduser INT auto_increment NOT NULL,
	nomeuser varchar(100) NOT NULL,
	senhauser varchar(100) NOT NULL,
	emailuser varchar(255) NOT NULL,
	CONSTRAINT usuario_pk PRIMARY KEY (coduser)
)

INSERT INTO case_delphi.usuario
(coduser, nomeuser, senhauser, emailuser)
VALUES(1, 'VSM', '1', 'vsm.joao.batista@gmail.com');