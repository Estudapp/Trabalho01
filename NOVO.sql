drop database if exists Estudapp;
CREATE database Estudapp;
use Estudapp;

CREATE TABLE Usuario (
    Sexo varchar(12),
    Email varchar(50),
    Email_de_recuperacao varchar(50),
    Nivel_de_Escolaridade varchar(50),
    Data_de_nascimento varchar(12),
    Horas_livres int,
    Qtd_Ajuda int,
    Id_Usuario int PRIMARY KEY,
    Colocacao_no_Ranking int,
    Senha varchar(8),
    Nome varchar(40)
);

CREATE TABLE Disciplina (
    Nome varchar(40),
    Conteudo varchar(4000),
    Exercicios varchar(4000),
    Id_Disciplina int PRIMARY KEY,
    Horas_a_dedicar int,
    Nivel_de_Dificuldade int
);

CREATE TABLE Ranking (
    Id_Ranking int PRIMARY KEY,
    Colocacoes int
);

CREATE TABLE Desenpenho (
    Id_Desempenho int PRIMARY KEY,
    Horas_dedicadas int,
    Qtd_Exercicios_Feitos int
);

CREATE TABLE Matricula (
    FK_Usuario_Id_Usuario int,
    FK_Disciplina_Id_Disciplina int
);

CREATE TABLE Desenpenho_Usuario (
    FK_Desenpenho_Id_Desempenho int,
    FK_Usuario_Id_Usuario int
);

CREATE TABLE Usuario_Ranking (
    FK_Usuario_Id_Usuario int,
    FK_Ranking_Id_Ranking int
);
 
ALTER TABLE Matricula ADD CONSTRAINT FK_Matricula_0
    FOREIGN KEY (FK_Usuario_Id_Usuario)
    REFERENCES Usuario (Id_Usuario)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Matricula ADD CONSTRAINT FK_Matricula_1
    FOREIGN KEY (FK_Disciplina_Id_Disciplina)
    REFERENCES Disciplina (Id_Disciplina)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Desenpenho_Usuario ADD CONSTRAINT FK_Desenpenho_Usuario_0
    FOREIGN KEY (FK_Desenpenho_Id_Desempenho)
    REFERENCES Desenpenho (Id_Desempenho)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Desenpenho_Usuario ADD CONSTRAINT FK_Desenpenho_Usuario_1
    FOREIGN KEY (FK_Usuario_Id_Usuario)
    REFERENCES Usuario (Id_Usuario)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Usuario_Ranking ADD CONSTRAINT FK_Usuario_Ranking_0
    FOREIGN KEY (FK_Usuario_Id_Usuario)
    REFERENCES Usuario (Id_Usuario)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE Usuario_Ranking ADD CONSTRAINT FK_Usuario_Ranking_1
    FOREIGN KEY (FK_Ranking_Id_Ranking)
    REFERENCES Ranking (Id_Ranking)
    ON DELETE SET NULL ON UPDATE CASCADE;
    
    
    
    
INSERT INTO Usuario (Sexo,Email,Email_de_recuperacao,Nivel_de_Escolaridade,Data_de_nascimento,Horas_livres,Qtd_Ajuda,Id_Usuario,Colocacao_no_Ranking,Senha,Nome)
values ('Masculino','JoseN@gmail.com','JoN@gmail.com','Ensino Medio Completo','1998/10/21',4,7,3030,6, 68866298,'Jose Noroegues'),
	('Masculino','carmiguel@gmail.com', 'cmiguel@hotmail.com' ,'Ensino Medio Completo','1997/10/20', 2, 6, 2020,9, 76876756,'Carlos Miguel'),
	('Feminino','Maria_Mira8@yahoo.com','Mira8@hotmail.com.com','Ensino Superior Completo','1989/12/07',3,8, 1010,7, 12099023,'Maria Miranda' );



INSERT INTO Disciplina (Nome,Conteudo,Exercicios,Id_Disciplina,Horas_a_dedicar,Nivel_de_Dificuldade)
values ('Matemática','Funções Trigonometricas','Funções Trigonometricas',10,3,3),
       ('Portugues','Orações Subordinadas','Orações Subordinadas',20,2,1),
       ('Filosofia','História da Filosofia','História da Filosofia',30,4,2);


INSERT INTO Matricula (FK_Disciplina_Id_disciplina,FK_Usuario_Id_Usuario)   
values				(20, 2020),
					(30, 1010),
					(10,3030); 


INSERT INTO desenpenho (Id_Desempenho,Horas_dedicadas,Qtd_Exercicios_Feitos)
	values   (6060,3,50),
		     (7070,4,55),
             (2525,2,60);
             
             
INSERT INTO Ranking (Id_Ranking,Colocacoes)
values (44,5),
       (33,10),   
       (55,8); 
       
       
INSERT INTO desenpenho_usuario (FK_Usuario_Id_Usuario,FK_Desenpenho_Id_Desempenho)
values	(2020,6060),
		(3030,7070),
        (1010,2525);
	
INSERT INTO usuario_ranking (FK_Usuario_Id_Usuario,FK_Ranking_Id_Ranking)
values	(2020,44),
		(3030,55),
        (1010,33);  
    

/*Pegando */
SELECT usuario.Nome, disciplina.Nome as NomeDisciplina from matricula inner join usuario on usuario.Id_Usuario=FK_Usuario_Id_Usuario
inner join disciplina on disciplina.Id_Disciplina=matricula.FK_Disciplina_Id_Disciplina;

SELECT usuario.Nome, Horas_dedicadas, Qtd_Exercicios_Feitos from desenpenho_usuario inner join usuario on usuario.Id_Usuario = desenpenho_usuario.FK_Usuario_Id_Usuario
inner join desenpenho on desenpenho.Id_Desempenho = desenpenho_usuario.FK_Desenpenho_Id_Desempenho;

SELECT usuario.Nome, ranking.Colocacoes as Colocação from usuario_ranking inner join usuario on usuario.Id_Usuario = usuario_ranking.FK_Usuario_Id_Usuario
inner join ranking on ranking.Id_Ranking = usuario_ranking.FK_Ranking_Id_Ranking;

