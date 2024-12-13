-- 1- BUSCAR O NOME E ANO DOS FILMES


SELECT Nome, Ano FROM Filmes


-- 2- BUSCAR O NOME E ANO DOS FILMES, ORDENADOS POR ORDEM CRESCENTE PELO ANO


SELECT Nome, Ano FROM Filmes
ORDER BY Ano


-- 3- BUSCAR PELO FILME DE VOLTA PARA O FUTURO, TRAZENDO O NOME, ANO E A DURAÇÃO


SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De volta para o futuro'


-- 4- BUSCAR FILMES LANÇADOS EM 1997


SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997


-- 5- BUSCAR FILMES LANÇADOS APÓS O ANO 2000


SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000


-- 6- BUSCAR OS FILMES COM A DURACAO MAIOR QUE 100 E MENOR QUE 150, ORDENANDO PELA DURANÇÃO EM ORDEM CRESCENTE


SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao


-- 7- BUSCAR A QUANTIDADE DE FILMES LANÇADOS NO ANO, AGRUPANDO POR ANO, ORDENANDO PELA DURACAO EM ORDEM DECRESCENTE


SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes 
GROUP BY Ano 	
ORDER BY Ano


-- 8- BUSCAR OS ATORES DO GENERO MASCULINO, RETORNANDO O PRIMEIRO NOME E ULTIMO NOME


SELECT PrimeiroNome, UltimoNome from Atores
WHERE Genero = 'M'


-- -9 BUSCAR OS ATORES DO GENERO FEMININO, RETORNANDO O PRIMEIRO NOME E ULTIMO NOME ORDENANDO PELO PRIMEIRO NOME


SELECT PrimeiroNome, UltimoNome from Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


-- 10- BUSCAR O NOME DO FILME E O GENERO


SELECT Nome AS NomeDoFilme, Genero AS GeneroDoFilme
FROM FilmesGenero fG
INNER JOIN Filmes ON FG.IdFilme = Filmes.Id
INNER JOIN Generos ON FG.IdGenero = Generos.Id


-- 11- BUSCAR O NOME DO FILME E O GENERO DO TIPO "MISTERIO"


SELECT Nome AS NomeDoFilme, Genero AS GeneroDoFilme
FROM FilmesGenero FG
INNER JOIN Filmes ON Filmes.Id= Fg.Id
INNER JOIN Generos ON Filmes.Id= Fg.Id
WHERE Generos.Genero = 'Mistério'


-- 12- BUSCAR O NOME DO FILME E OS ATORES, TRAZENDO O PRIMEIRO NOME, ULTIMO NOME E SEU PAPEL


SELECT Nome AS FILME, Papel AS PapelNoFilme, PrimeiroNome + ' ' + UltimoNome AS NomeCompletoAtor
FROM ElencoFilme EF
INNER JOIN Atores ON Atores.Id = EF.IdAtor
INNER JOIN Filmes ON Filmes.Id = EF.IdFilme
ORDER BY FILME
