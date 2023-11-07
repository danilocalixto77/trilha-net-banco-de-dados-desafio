-- 1
SELECT 
	Nome, 
	Ano 
FROM Filmes 

-- 2
SELECT 
	*
FROM Filmes 
ORDER BY Ano ASC

-- 3
SELECT 
	*
FROM Filmes 
WHERE Nome = 'De Volta Para o Futuro'

-- 4
SELECT 
	*
FROM Filmes 
WHERE Ano = 1997

-- 5 
SELECT 
	*
FROM Filmes 
WHERE Ano > 2000

-- 6
SELECT 
	*
FROM Filmes 
WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao

-- 7 
SELECT 
	Ano,
	Count(*) as Quantidade
FROM Filmes 
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT 
	* 
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT 
	* 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT 
	fi.Nome, 
	ge.Genero 
FROM Filmes fi
INNER JOIN FilmesGenero fg ON fg.IdFilme = fi.Id
INNER JOIN Generos      ge ON ge.Id      = fg.IdGenero

-- 11
SELECT 
	fi.Nome, 
	ge.Genero 
FROM Filmes fi
INNER JOIN FilmesGenero fg ON fg.IdFilme = fi.Id
INNER JOIN Generos      ge ON ge.Id      = fg.IdGenero
WHERE Genero = 'Mistério'

-- 12
SELECT * FROM Filmes
SELECT * FROM ElencoFilme
SELECT * FROM Atores

SELECT
	fi.Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Filmes fi
INNER JOIN ElencoFilme ef ON ef.IdFilme = fi.Id
INNER JOIN Atores      ac ON ac.Id      = ef.IdAtor