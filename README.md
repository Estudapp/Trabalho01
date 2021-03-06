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
Aplicativo interativo que auxilia estudantes, com cronogramas de estudo com base nas matérias, horários de sua disposição e suas prioridades, podendo postar suas dúvidas para que outros usuários respondam, as perguntas e respostas serão avaliadas pelos usuários, somando pontos para sua avaliação da tabela de desempenho individual, as 10 maiores pontuações de cada matéria estarão marcadas no Ranking. Os usuários que ajudarão nas Respostas (respondendo e avaliando) terão como opção deixar as matérias que queiram ajudar marcadas, Ex: “Quero ajudar em matemática e história”, marcando matérias o que for referente a elas aparecerá para o usuário. Os usuários quando forem fazer perguntas terão dois locais onde pesquisar no tópico matéria ou buscar no próprio feed, fazendo essa busca será mostrado tudo o que for relacionado a pergunta. O usuário pode avaliar respostas de acordo com o nível de colaboração com seus estudos numa escala de 1 a 5, Ranking: todos que respondem serão avaliados pelos demais usuários, quanto mais avaliações positivas mais alto ficará no ranking, e assim tendo um incentivo para ajudar aos outros usuários.  <br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/Login.png">

https://drive.google.com/open?id=0B6uFHreMfV7XVlJsR3I1RUZQNFE<br>

### 5.MODELO CONCEITUAL<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/Modelo%20Conceitual.png">
   5.1 Descrição.
      https://github.com/Estudapp/Trabalho01/blob/master/Descri%C3%A7%C3%A3o.pdf<br>
### 6	MODELO LÓGICO<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/Modelo%20L%C3%B3gico.png">

### 7	MODELO FÍSICO<br>

CREATE<br>
https://github.com/Estudapp/Trabalho01/blob/master/Create<br>


### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br> 
INSERT <br>
https://github.com/Estudapp/Trabalho01/blob/master/Insert<br>

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
Tabela <br>
https://github.com/Estudapp/Trabalho01/blob/master/planilhaBD.pdf
CREATE E INSERT<br> 
https://github.com/Estudapp/Trabalho01/blob/master/Create%20e%20Insert
 
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

select * from Usuario;<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/bsca1.png">

select * from disciplina;<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/bsca2.png">

select * from Matricula;<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/bsca3.png">

select * from desenpenho;<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/bsca4.png">

select * from Ranking;<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/bsca5.png">

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>
select * from Ranking where Id_ranking = 55; <br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/wh1.png">

select Nome, Email from Usuario where name = 'José Noroegues'; <br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/wh2.png">

select * from Desenpenho where Qtd_Exercicios_feitos>50; <br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/wh3.png">


#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
select * from Ranking where colocacoes >6;<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/L1.png">

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
SELECT usuario.Nome as NomeDisciplina from matricula inner join usuario on usuario.Id_Usuario=FK_Usuario_Id_Usuario;<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/innJ1.PNG">
SELECT usuario.Nome from desenpenho_usuario inner join usuario on usuario.Id_Usuario = desenpenho_usuario.FK_Usuario_Id_Usuario;<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/innn.PNG">
SELECT usuario.Nome, ranking.Colocacoes as Colocação from usuario_ranking inner join usuario on usuario.Id_Usuario = usuario_ranking.FK_Usuario_Id_Usuario inner join ranking on ranking.Id_Ranking = usuario_ranking.FK_Ranking_Id_Ranking; <br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/innJ3.PNG">


#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
        Entrega até este ponto em (data a ser definida)
        
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
SELECT Nome,Email,Sexo from matricula right outer join usuario on usuario.Id_usuario=matricula.FK_Usuario_Id_Usuario; <br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/right.PNG">
SELECT Nome,conteudo from matricula right outer join Disciplina on disciplina.Id_Disciplina=matricula.FK_Disciplina_Id_Disciplina;<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/right2.PNG">

SELECT ranking.Colocacoes as Colocação from usuario_ranking left outer join ranking on ranking.Id_Ranking= usuario_ranking.FK_Ranking_Id_Ranking;<br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/left3.PNG">



#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
create view ranking_mais_velhos as select usuario.Nome, usuario.Email, usuario.Data_de_nascimento as Nascimento from usuario order by usuario.Data_de_nascimento; <br>
select * from ranking_mais_velhos; <br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/view.PNG">

#### 9.10	SUBCONSULTAS (Mínimo 3) <br>
select * from disciplina where Nome in (select Nome from disciplina where Nome like "M%"); <br>
<img src="https://github.com/Estudapp/Trabalho01/blob/master/subconsulta.PNG">

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
https://github.com/Estudapp/Trabalho01/blob/master/slidBDAA.pdf<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>
Desenvolver corretamente o modelo conceitual.<br>

        Entrega até este ponto em (data a ser definida)
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

#### Link para BrModelo:
http://sis4.com/brModelo/brModelo/download.html
