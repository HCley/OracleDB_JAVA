CREATE TABLE veterinario (
  
crmv int NOT NULL,        	
nome varchar(100) NOT NULL,         	
email varchar(50) NOT NULL, 	        	
plantonista char(1) NOT NULL,    	        	
 
CONSTRAINT PK_cod_crmv PRIMARY KEY (crmv),
CONSTRAINT CK_plantonista CHECK  (plantonista in('S','N'))
 
);


CREATE TABLE cliente (      	        	
 
cod_cliente int NOT NULL,    	        	
nome varchar(150) NOT NULL,        	
email varchar(50) NOT NULL,   	        	
telefone varchar(20) NOT NULL,       	        	
cpf varchar(15) NOT NULL,   	        	
 
CONSTRAINT PK_cod_cli PRIMARY KEY (cod_cliente ) 

);


CREATE TABLE animal (      	        	
 	
nome varchar(100) NOT NULL,
cod_animal int NOT NULL,    	        	
cod_cliente int NOT NULL,    	        	
especie varchar(50) DEFAULT NULL,	        	
raca varchar(50) DEFAULT NULL,     	        	
idade date  DEFAULT NULL,
	
CONSTRAINT PK_cod_animal PRIMARY KEY (cod_animal),
CONSTRAINT FK_cli_cod FOREIGN KEY (cod_cliente) REFERENCES cliente (cod_cliente) 	        	
);


CREATE TABLE atendimento (          	
 
cod_atendimento int NOT NULL,      	        	
crmv int NOT NULL,    	        	
cod_animal int NOT NULL,    	        	
diagnostico varchar(1000) NOT NULL,          	
data_atendimento date NOT NULL,
  
CONSTRAINT PK_cod_atendimento PRIMARY KEY (cod_atendimento),
CONSTRAINT FK_cod_animal FOREIGN KEY (cod_animal) REFERENCES animal (cod_animal),     	        	
CONSTRAINT FK_cod_crmv FOREIGN KEY (crmv) REFERENCES veterinario (crmv)  
); 


CREATE TABLE tipo_exames (
 
cod_exames int NOT NULL,  	        	
tipo varchar(100) NOT NULL,	        	
descricao varchar(50) NOT NULL,     	        	
preco_tabelado decimal(15,2) NOT NULL,     	        	
 
CONSTRAINT PK_cod_exames PRIMARY KEY (cod_exames)          	
);


CREATE TABLE exame (      	        	
 
exame_id int NOT NULL,
cod_exames int NOT NULL,  	        	
cod_atendimento int NOT NULL,       	        	
preco_praticado decimal(15,2) NOT NULL,    	        	
 
CONSTRAINT PK_id_exame  PRIMARY KEY (exame_id),     	        	
CONSTRAINT FK_cod_atendimento FOREIGN KEY (cod_atendimento)        	        	
REFERENCES atendimento(cod_atendimento),        	
CONSTRAINT FK_cod_tipo_exame FOREIGN KEY (cod_exames) REFERENCES tipo_exames (cod_exames)
);
