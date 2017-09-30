# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

# Sumário

### 1.COMPONENTES<br>
Marcela Martins (marcelasilva.martins@hotmail.com)<br>
Ismael Caetano (ismacaetano12@gmail.com)<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Estuapp 
Aplicativo interativo que auxilia estudantes, com cronogramas de estudo com base nas matérias e horários de sua disposição, podendo postar suas dúvidas para que outros usuários respondam e assim formar uma corrente de ajuda entre os usuários. <br>

### 3.MINI-MUNDO<br>
Aplicativo interativo que auxilia estudantes, com cronogramas de estudo com base nas matérias e horários de sua disposição, podendo postar suas dúvidas para que outros usuários respondam, as perguntas e respostas serão avaliadas pelos usuários, ganhando ou perdendo pontos para sua avaliação da tabela de desempenho individual, as 10 maiores pontuações de cada matéria estarão marcadas no Ranking. Os usuários que ajudarão nas Respostas (respondendo e avaliando) terão como opção deixar as matérias que queiram ajudar marcadas, Ex: “Quero ajudar em matemática e história, marcando matérias o que for referente a elas aparecerá para o usuário. Os usuários quando forem fazer perguntas terão dois locais onde colocaram a matéria e a sua dúvida, fazendo uma busca, e será mostrarado tudo o que for relacionado, ou no próprio feed. O usuário pode avaliar respostas de acordo com o nível de colaboração com seus estudos, Ranking: todos que respondem serão avaliados pelos demais usuários, quanto mais avaliações positivas mais alto ficará no ranking, e assim tendo um incentivo para ajudar aos outros usuários. <br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/Login.png">


https://drive.google.com/open?id=0B6uFHreMfV7XVlJsR3I1RUZQNFE<br>


### 5.MODELO CONCEITUAL<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/mc.png">
    a) NOTACAO ENTIDADE RELACIONAMENTO
(https://drive.google.com/open?id=0B6uFHreMfV7XaVdOVm91TXBRaFk)
    
    

#### 5.1 Validação do Modelo Conceitual

#### 5.2 DECISÕES DE PROJETO

#### 5.3 DESCRIÇÃO DOS DADOS 
   
### 6	MODELO LÓGICO<br>
<img src="https://github.com/trabpickf/Trabalho01/blob/master/ml.png">

### 7	MODELO FÍSICO<br>

CREATE TABLE Cadastro_do_Usuario_Login (
    Nome,
    E_mail,
    Nick PRIMARY KEY,
    Data_de_Nascimento,
    Sexo_,
    Nivel_de_Escolaridade,
    Senha,
    N__do_celular
);

CREATE TABLE Dados_do_Desempenho (
    Horas_Fazer_Concluidas,
    Media_de_pontos_nas_materias,
    Exercicios_feitos,
    Colocacao_no_Ranking
);

CREATE TABLE Materias (
    Conteudo,
    Exercicios,
    Nivel_de_dificuldade
);

CREATE TABLE Pontuacao (
    Pontos_por_respostas,
    Pontos_por_respostas_corretas,
    Pontos_por_exercicios_feitos
);

CREATE TABLE Ranking (
    Soma_de_Pontos_do_usuario,
    Colocacao_de_cada_usuario PRIMARY KEY
);

CREATE TABLE Matricula (
    FK_Cadastro_do_Usuario_Login_Nick
);

CREATE TABLE Desempenho__Materia (
);

CREATE TABLE Desempenho_Pontuacao (
);

CREATE TABLE Pontuacao_Ranking (
    FK_Ranking_Colocacao_de_cada_usuario
);
 
ALTER TABLE Matricula ADD CONSTRAINT FK_Matricula_0
    FOREIGN KEY (FK_Cadastro_do_Usuario_Login_Nick)
    REFERENCES Cadastro_do_Usuario_Login (Nick);
 
ALTER TABLE Pontuacao_Ranking ADD CONSTRAINT FK_Pontuacao_Ranking_0
    FOREIGN KEY (FK_Ranking_Colocacao_de_cada_usuario)
    REFERENCES Ranking (Colocacao_de_cada_usuario);
        Entrega até este ponto em (data a ser definida)
        
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br> 
create database if not exists Cronograma;
use Cronograma;

create table if not exists Cadastro_do_Usuario_Login (
    Nome char,
    E_mail varchar (30),
	Nick varchar(30),
    Data_de_Nascimento date,
    Sexo char (1),
    Nivel_de_Escolaridade varchar (60),
    Senha varchar (8),
    N__do_celular int (13),
    PRIMARY KEY (Nick)
);

create table if not exists Dados_do_Desempenho (
    Horas_Fazer_Concluidas timestamp,
    Media_de_pontos_nas_materias float (20),
    Exercicios_feitos int (60),
    Colocacao_no_Ranking int (20)
);

create table if not exists Materias (
    Conteudo varchar (10000),
    Exercicios varchar (60),
    Nivel_de_dificuldade int(3)
);

create table if not exists Pontuacao (
    Pontos_por_respostas int (100),
    Pontos_por_respostas_corretas int (100), 
    Pontos_por_exercicios_feitos int (100)
);

create table if not exists Ranking (
    Soma_de_Pontos_do_usuario int (100),
    Colocacao_de_cada_usuario int (20),
    PRIMARY KEY (Colocacao_de_cada_usuario)
);

create table if not exists Matricula (
    FK_Cadastro_do_Usuario_Login_Nick varchar(200)
);

*/
CREATE TABLE Desempenho__Materia (
);

CREATE TABLE Desempenho_Pontuacao (
);

CREATE TABLE Pontuacao_Ranking (
    FK_Ranking_Colocacao_de_cada_usuario int
);
 
ALTER TABLE Matricula ADD CONSTRAINT FK_Matricula_0
    FOREIGN KEY (FK_Cadastro_do_Usuario_Login_Nick)
    REFERENCES Cadastro_do_Usuario_Login (Nick);
 
ALTER TABLE Pontuacao_Ranking ADD CONSTRAINT FK_Pontuacao_Ranking_0
    FOREIGN KEY (FK_Ranking_Colocacao_de_cada_usuario)
    REFERENCES Ranking (Colocacao_de_cada_usuario);

insert into Cadastro_do_Usuario_Login (Nome, E_mail, Nick, Data_de_Nascimento, Sexo, Nivel_de_Escolaridade, Senha, N__do_celular)
Values ('Carlos Miguel','Carmiguel@gmail.com','Carlos.M','20/10/97','M','Ensino M. Comp.','123f7908','+55(27)998672121'),
	   ('Maria Miranda','Maria_Miranda8@yahoo.com','Mirandamari','12/07/98','F','Ensino M. Comp.','12hj9023','+55(22)992729081'),
       ('Flávia Pinheiro','Flavia32Pin@hotmail','Flavia.p2','09/08/87','F','Ensino M. Comp.','897606hj','+55(21)988769102'),
       ('George Augusto','George.Augusto@hotmail.com','AugusGe','23/03/93','M','Ensino M. Comp.','h36718kl','+55(11)988769102'),
       ('Patrick Oliveira','PatrickOliv@gmail.com','Patick_oliveira','01/05/00','M','Ensino F. Comp.','782811nj','+55(27)977860321');

insert into Dados_do_Desempenho (Horas_Fazer_Concluidas, Media_de_pontos_nas_materias, Exercicios_feitos, Colocacao_no_Ranking)
Values ('2hs/2hs','72.4','60','19'),
	   ('3hs/3hs','64.8','40','20'),
       ('3hs/1h','67.9','60','11'),
       ('2hs/1hs','87.0','30','2'),
       ('3hs/2h','30.7','27','7');

insert into Materias (Conteudo, Exercicios, Nivel_de_dificuldade)
Values ('Hidrocarbonetos,Termodinamica, Gramatica.','60 exercícios','1,3,2'),
       ('Feudalismo, Teorias do senso comum, verbo to be, função exponencial.','60 exercícios','2.1,3'),
       ('Derivadas integrais, Monografias.','60 exercícios','2,3,1'),
       ('Genetica, Libras, Higiene ocupacional','60 exercícios','3,2,1'),
       ('Plano cartesiano, Neo liberalismo, Gases Nobres','60 exercícios','3,1,2');

insert into Pontuacao (Pontos_por_respostas, Pontos_por_exercicios_feitos)
Values ('7','9'),
       ('8','82'),
       ('21','60'),
       ('10','21'),
       ('9','62');

insert into Ranking (Soma_de_Pontos_do_usuario, Colocacao_de_cada_usuario)
Values ('16','19'),
	   ('90','20'),
       ('81','11'),
       ('31','2'),
       ('71','7');

insert into Matricula (FK_Cadastro_do_Usuario_Login_Nick)
Values (
);

insert into Desempenho__Materia ()
Values(
);

insert into Desempenho_Pontuacao ()
Values(
);

insert into Pontuacao_Ranking (FK_Ranking_Colocacao_de_cada_usuario)
Values(
);
 
ALTER TABLE Matricula ADD CONSTRAINT FK_Matricula_0
    FOREIGN KEY (FK_Cadastro_do_Usuario_Login_Nick)
    REFERENCES Cadastro_do_Usuario_Login (Nick);
 
ALTER TABLE Pontuacao_Ranking ADD CONSTRAINT FK_Pontuacao_Ranking_0
    FOREIGN KEY (FK_Ranking_Colocacao_de_cada_usuario)
    REFERENCES Ranking (Colocacao_de_cada_usuario);#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
<img src="https://github.com/Estudapp/Trabalho01/blob/master/tabbd.png">
https://drive.google.com/open?id=0B6uFHreMfV7XekZxbVRPQWpsWnM

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
        Entrega até este ponto em (data a ser definida)
        
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
#### 9.10	SUBCONSULTAS (Mínimo 3) <br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega até este ponto em (data a ser definida)
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

#### Link para BrModelo:
http://sis4.com/brModelo/brModelo/download.html
