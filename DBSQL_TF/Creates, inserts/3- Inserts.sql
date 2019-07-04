--Inserts

INSERT INTO veterinario (crmv, nome,email,plantonista)
values (1,'Cleyson Braga','cleysinho@ecome.com','S');

INSERT INTO veterinario (crmv, nome,email,plantonista)
values (2,'Pércio Reinert','percinho@dellWith.com','S');

INSERT INTO veterinario (crmv, nome,email,plantonista)
values (3,'Hiaguinho Kowalski','Kowalski@Analysis.com','N');

INSERT INTO veterinario (crmv, nome,email,plantonista)
values (4,'Uberdaon','Uber@88pop.com','S');

INSERT INTO veterinario (crmv, nome,email,plantonista)
values (5,'Alexandro SUrnas','Rico@pobre.br','N');

INSERT INTO veterinario (crmv, nome,email,plantonista)
values (6,'Adriane','Bobnao@muitosemails.com','S');

INSERT INTO veterinario (crmv, nome,email,plantonista)
values (7,'Arrombs Queen','Quiris@Biscuitos.com','N');

INSERT INTO veterinario (crmv, nome,email,plantonista)
values (8,'Parcio Reinert','parcel@dell.com','S');

INSERT INTO veterinario (crmv, nome,email,plantonista)
values (9,'Ehu jaz','Neimz@seix.com','N');

INSERT INTO veterinario (crmv, nome,email,plantonista)
values (10,'Mailx Usq','Colorsk@asqui.com','N');





INSERT INTO cliente (cod_cliente, nome, email, telefone,cpf)         	
VALUES ('1', 'Maria Jaquina', 'maria@gmail.com', 12347543, 5431278145 ); 
 
INSERT INTO cliente (cod_cliente, nome, email, telefone,cpf)          	
VALUES ('2', 'Maria Joaquina', 'maria@gmail.com', 12345678, 32145 );         	
  
INSERT INTO cliente (cod_cliente, nome, email, telefone,cpf) 	        	
VALUES ('3', 'Cleyson Braga', 'Cleyson@gmail.com', 12345678, 32145 );       	        
  
INSERT INTO cliente (cod_cliente, nome, email, telefone,cpf)    
VALUES ('4', 'Ary Tarrago', 'Ary@gmail.com', 12345678, 3210947345 );         	
  
INSERT INTO cliente (cod_cliente, nome, email, telefone,cpf)          	
VALUES ('5', 'Josefina Souza', 'josefina@outlook.com', 12345678, 3214982375 );	
 
INSERT INTO cliente (cod_cliente, nome, email, telefone,cpf)         	
VALUES ('6', 'Percio Silva', 'Percio@gmail.com', 12345678, 321023805 ); 
 
INSERT INTO cliente (cod_cliente, nome, email, telefone,cpf)          	
VALUES ('7', 'Matheus Souza', 'teusinho@gmail.com', 123223478, 321987545 );    

INSERT INTO cliente (cod_cliente, nome, email, telefone,cpf)     	        	
VALUES ('8', 'Roberval da Silva', 'roberval@hotmail.com', 65435678,32098145 );  

INSERT INTO cliente (cod_cliente, nome, email, telefone,cpf)          	
VALUES ('9', 'Vanessa Avila', 'vanessa@gmail.com', 124456678,37642145 );

INSERT INTO cliente (cod_cliente, nome, email, telefone,cpf)          	
VALUES ('10', 'Rafale dos Santos', 'rafael@gmail.com', 1234987,1278145 );  





INSERT INTO animal (cod_animal, cod_cliente, nome, especie, raca, idade)        	        
VALUES ('1', '1', 'Pércio', 'gato', 'Persa', to_date('25/04/1993', 'DD/MM/YYYY') );
      	 
INSERT INTO animal (cod_animal, cod_cliente, nome, especie, raca, idade)
VALUES ('2', '2', 'Picle', 'cachorro', 'poodle',to_date('20/10/2032', 'DD/MM/YYYY'));  	
 
INSERT INTO animal (cod_animal, cod_cliente, nome, especie, raca, idade)  	
VALUES ('3', '3', 'Wnbeagle', 'cachorro', 'Beagle', to_date('21/11/1999', 'DD/MM/YYYY'));  
  
INSERT INTO animal (cod_animal, cod_cliente, nome, especie, raca, idade)
VALUES ('4', '4', 'Santa Mufasa', 'hamster', 'Sírio', to_date('01/02/2006', 'DD/MM/YYYY'));     	        	
 
INSERT INTO animal (cod_animal, cod_cliente, nome, especie, raca, idade)      
VALUES ('5', '5', 'Jacob', 'gato','sphynx', to_date('11/05/2003', 'DD/MM/YYYY') );

INSERT INTO animal (cod_animal, cod_cliente, nome, especie, raca, idade)
VALUES ('6', '6', 'Luiggi', 'cachorro', 'mastim inglês',to_date('22/12/1997', 'DD/MM/YYYY')); 	        	
 
INSERT INTO animal (cod_animal, cod_cliente, nome, especie, raca, idade)
VALUES ('7', '7', 'Coat', 'vaca', 'brown swiss',to_date('19/01/2001', 'DD/MM/YYYY'));        	
 
INSERT INTO animal (cod_animal, cod_cliente, nome, especie, raca, idade)
VALUES ('8', '8', 'Bug', 'cavalo', 'shire',to_date('01/01/2000', 'DD/MM/YYYY'));      	        	
 
INSERT INTO animal (cod_animal, cod_cliente, nome, especie, raca, idade)
VALUES ('9', '9', 'Matriz', 'gato', 'siamês', to_date('13/03/2039', 'DD/MM/YYYY') );         	
 
INSERT INTO animal (cod_animal, cod_cliente, nome, especie, raca, idade)
VALUES ('10', '10','Drauzo', 'cachorro', 'Galgo inglês', to_date('13/12/1976', 'DD/MM/YYYY'));   

INSERT INTO animal (cod_animal, cod_cliente, nome, especie, raca, idade)
VALUES ('11', '7', 'Abstênio', 'cachorro', 'vira-lata', to_date('21/05/2008', 'DD/MM/YYYY'));





INSERT INTO atendimento (cod_atendimento, crmv, cod_animal, diagnostico,
data_atendimento)    	        	
VALUES (1, 1, 1, 'pata diantera esquerda fraturada,recomendado raio x da pata',
TO_DATE('19/04/2019 18:20:21','DD/MM/YYYY HH24:MI:SS'));       	        	
 
INSERT INTO atendimento (cod_atendimento, crmv, cod_animal, diagnostico,
data_atendimento)    	        	
VALUES (2, 2, 2, 'fortes dores abdominais sugerido ecografia do abdomen', TO_DATE('11/04/2019 20:32:01','DD/MM/YYYY HH24:MI:SS'));     	
 
INSERT INTO atendimento (cod_atendimento, crmv, cod_animal, diagnostico,      
data_atendimento)    	        	
VALUES (3, 3, 3, 'Catarata diagnosticada',
TO_DATE('01/05/2019 09:01:02','DD/MM/YYYY HH24:MI:SS'));
        	
INSERT INTO atendimento (cod_atendimento, crmv, cod_animal, diagnostico,
data_atendimento)    	        	
VALUES (4, 4, 4, 'Vermes diagnosticada, recomendado o uso de vermifôgo', 	
TO_DATE('27/04/2013 15:32:09', 'DD/MM/YYYY HH24:MI:SS'));
INSERT INTO atendimento (cod_atendimento, crmv, cod_animal, diagnostico,
data_atendimento)    	        	
VALUES (5, 5, 5, 'Solicitado castração',
TO_DATE('27/04/2013 16:43:12','DD/MM/YYYY HH24:MI:SS'));      
 
INSERT INTO atendimento (cod_atendimento, crmv, cod_animal, diagnostico,   	
data_atendimento)    	        	
VALUES (6, 6, 6, 'tramautismo craniano, solicitado tomografiada do cranio',
TO_DATE('27/04/2013 07:31:19','DD/MM/YYYY HH24:MI:SS'));       	        	
 
INSERT INTO atendimento (cod_atendimento, crmv, cod_animal, diagnostico, data_atendimento)    	        	
VALUES (7, 7, 7, 'Suspeita de estar prenha, solicitada ecografia',
TO_DATE('27/04/2013 04:43:21','DD/MM/YYYY HH24:MI:SS'));       	        	

INSERT INTO atendimento (cod_atendimento, crmv, cod_animal, diagnostico,
data_atendimento)    	        	
VALUES (8, 8, 8, 'paciente com fortes dores, suspeita de encefalite equina, solicitado exame de sangue',
TO_DATE('27/04/2013 23:09:12','DD/MM/YYYY HH24:MI:SS'));     	 

INSERT INTO atendimento (cod_atendimento, crmv, cod_animal, diagnostico,   	
data_atendimento)    	        	
VALUES (9, 9, 9, 'paciente pré-diagnosticado com infecção urinaria, solicitado exame de urina',       	
TO_DATE('27/04/2013 13:09:04','DD/MM/YYYY HH24:MI:SS'));       	        	
 
INSERT INTO atendimento (cod_atendimento, crmv, cod_animal, diagnostico,     
data_atendimento)    	        	
VALUES (10, 1, 4, 'paciente não come a dias, suspeita de vermes, solicitado exame de fezes',
TO_DATE('27/04/2013 21:02:53','DD/MM/YYYY HH24:MI:SS'));	        	
 




INSERT INTO tipo_exames (cod_exames, tipo, descricao, preco_tabelado)
values (1,'radiografia convencional','raio x da pata',89.90);     	        	
 
INSERT INTO tipo_exames (cod_exames, tipo, descricao, preco_tabelado)
values (2,'radiografia contrastada','ecografia',150.00);          	
 
INSERT INTO tipo_exames (cod_exames, tipo, descricao, preco_tabelado)
values (3,'analise sanguinea','exame de sangue',69.90);        	
 
INSERT INTO tipo_exames (cod_exames, tipo, descricao, preco_tabelado) 
values (4,'Ultrassonografia abdominal','tomografia',205.99);        	
 
INSERT INTO tipo_exames (cod_exames, tipo, descricao, preco_tabelado)
values (5,'analise de urina','exame de urina',89.90);    	        	
 
INSERT INTO tipo_exames (cod_exames, tipo, descricao, preco_tabelado)
values (6,'analise de fezes','exame de fezes',89.90);  	        	
 
INSERT INTO tipo_exames (cod_exames, tipo, descricao, preco_tabelado) 
values (7,'eletroretinograma','exame preliminar para cirurgia de catarata',200.0);

INSERT INTO tipo_exames (cod_exames, tipo, descricao, preco_tabelado)
values (8,'exame preeliminar', 'pré-cirurgico',90.90); 	        	
 
INSERT INTO tipo_exames (cod_exames, tipo, descricao, preco_tabelado)
values (9,'tomografia geral','corpo todo',89.90);        	
 
INSERT INTO tipo_exames (cod_exames, tipo, descricao, preco_tabelado)
values (10,'exame de rotina','analise geral',100.90); 




	
INSERT INTO exame (exame_id, cod_exames, cod_atendimento, preco_praticado)
values (1,2,1,130.90);	        	
 
INSERT INTO exame (exame_id, cod_exames, cod_atendimento, preco_praticado)
values (2,2,2,90.0);    	        	
 
INSERT INTO exame (exame_id, cod_exames, cod_atendimento, preco_praticado)
values (3,7,3,190.0);  	        	
 
INSERT INTO exame (exame_id, cod_exames, cod_atendimento, preco_praticado)
values (4,10,4,90.0);  	        	
 
INSERT INTO exame (exame_id, cod_exames, cod_atendimento, preco_praticado)
values (5,8,5,190.0);  	        	
 
INSERT INTO exame (exame_id, cod_exames, cod_atendimento, preco_praticado)
values (6,4,6,200.0);  	        	

INSERT INTO exame (exame_id, cod_exames, cod_atendimento, preco_praticado)
values (7,2,7,130.0);
 
INSERT INTO exame (exame_id, cod_exames, cod_atendimento, preco_praticado)
values (8,3,8,50.0);    	        	
 
INSERT INTO exame (exame_id, cod_exames, cod_atendimento, preco_praticado)
values (9,6,4,79.0);   	        	
 
INSERT INTO exame (exame_id, cod_exames, cod_atendimento, preco_praticado)
values (10,5,4,79.0); 
