-- 1
SELECT Nome, Ano FROM Filmes 


-- 2
SELECT Nome, Ano, Duracao FROM Filmes 
ORDER BY Ano 

-- 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- 5 
SELECT Nome, Ano, Duracao FROM Filmes Where Ano > 2000 

-- 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7 
SELECT Ano, COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 
SELECT * FROM Atores WHERE Genero = 'M'

-- 9 
SELECT * FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 
SELECT
	Nome,
	Genero
FROM
	Filmes
INNER JOIN  FilmesGenero fg ON fg.IdFilme = Filmes.Id 
INNER JOIN Generos g on g.Id = fg.IdGenero

-- 11
 SELECT
	Nome,
	Genero
FROM
	Filmes
INNER JOIN  FilmesGenero fg ON fg.IdFilme = Filmes.Id 
INNER JOIN Generos g on g.Id = fg.IdGenero
WHERE Genero = 'Mistério'

-- 12 
 SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM
	Filmes
INNER JOIN  ElencoFilme ef ON ef.IdFilme = Filmes.Id 
INNER JOIN Atores a on a.Id = ef.IdAtor


