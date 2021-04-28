'<<<<< Challenge 1 >>>>>'
SELECT
authors.au_lname AS lastname, authors.au_fname AS firstname, authors.au_id AS authorID, titles.title, titles.pub_id AS pubID 
FROM authors 
RIGHT JOIN
titleauthor ON authors.au_id = titleauthor.au_id 
RIGHT JOIN
titles ON titleauthor.title_id = titles.title_id
ORDER BY pubID ASC;


'The answer sheet does inner joins, this removes 1 title without author info'
SELECT
authors.au_lname AS lastname, authors.au_fname AS firstname, authors.au_id AS authorID, titles.title, titles.pub_id AS pubID 
FROM authors 
INNER JOIN
titleauthor ON authors.au_id = titleauthor.au_id 
INNER JOIN
titles ON titleauthor.title_id = titles.title_id
ORDER BY pubID ASC;


'<<<<< Challenge 2 >>>>>'
'how many titles each author has published at each publisher.'
'rollup used to check if the total number of titles is still the same as in challenge 1'

SELECT
authors.au_lname AS lastname, authors.au_fname AS firstname, authors.au_id AS authorID, COUNT(titles.title_id) AS nrtitle, titles.pub_id AS pubID 
FROM authors 
RIGHT JOIN
titleauthor ON authors.au_id = titleauthor.au_id 
RIGHT JOIN
titles ON titleauthor.title_id = titles.title_id
GROUP BY authorID with ROLLUP
ORDER BY lastname
;

'<<<<< Challenge 3 >>>>>'
'Who are the top 3 authors who have sold the highest number of titles?'
SELECT
authors.au_lname AS lastname, authors.au_fname AS firstname, authors.au_id AS authorID, 
sales.qty AS Total
FROM authors 
RIGHT JOIN
titleauthor ON authors.au_id = titleauthor.au_id 
RIGHT JOIN
titles ON titleauthor.title_id = titles.title_id
RIGHT JOIN
sales ON sales.title_id = titles.title_id
GROUP BY authorID 
ORDER BY Total DESC LIMIT 3
;


'<<<<< Challenge 4 >>>>>'
'How many books has each author sold? (qty)'
SELECT
authors.au_lname AS lastname, authors.au_fname AS firstname, authors.au_id AS authorID, 
IFNULL(sales.qty,0) AS Total
FROM authors
LEFT JOIN
titleauthor ON authors.au_id = titleauthor.au_id
LEFT JOIN
sales ON titleauthor.title_id = sales.title_id 
GROUP BY authorID
ORDER BY Total DESC, lastname ASC
;