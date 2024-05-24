--Query 01
SELECT Nome, Ano FROM Filmes

--Query 02
SELECT Nome, Ano FROM Filmes
ORDER BY Ano

--Query 03
SELECT Nome, Ano, Duracao FROM Filmes
Where Nome =  'De Volta para o Futuro'

--Query 04
SELECT Nome, Ano FROM Filmes
Where Ano = 1997

--Query 05
SELECT Nome, Ano FROM Filmes
Where Ano > 2000

--Query 06
SELECT Nome, Ano, Duracao FROM Filmes
Where Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--Query 07
SELECT Ano, Count(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--Query 08
SELECT Id, PrimeiroNome, UltimoNome , Genero FROM Atores
WHERE Genero = 'M'

--Query 09
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
Where Genero = 'F'
ORDER BY PrimeiroNome

--Query 10
SELECT filme.Nome, genero.Genero
FROM Filmesgenero fg
INNER JOIN Filmes filme ON filme.ID = fg.IdFilme
INNER JOIN Generos genero ON genero.ID = fg.IdGenero

--Query 11
SELECT filme.Nome, genero.Genero
FROM Filmesgenero fg
INNER JOIN Filmes filme ON filme.ID = fg.IdFilme
INNER JOIN Generos genero ON genero.ID = fg.IdGenero
WHERE genero = 'Mistério'

--Query 12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM ElencoFilme ef
INNER JOIN Filmes f ON f.ID = ef.IdFilme
INNER JOIN Atores a ON a.ID = ef.IdAtor
