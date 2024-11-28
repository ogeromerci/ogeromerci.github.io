SELECT title, score
 FROM hacker_news
 ORDER BY score DESC
 LIMIT 5;

 SELECT SUM (score)
 FROM hacker_news;

 SELECT user, SUM (score)
 FROM hacker_news
 GROUP BY user
 HAVING SUM (score) > 200
 ORDER BY SUM (score) DESC;

 SELECT ROUND ((517 + 309 + 304 + 282) / 6366.0 * 100);

SELECT user, 
COUNT (url)
FROM hacker_news
WHERE url LIKE '%watch?v=dQw4w9WgXcQ%'
GROUP BY 1
ORDER BY 2 DESC;

SELECT CASE
WHEN url LIKE '%github%' THEN 'Github'
WHEN url LIKE '%medium%' THEN 'Medium'
WHEN url LIKE '%Newyork%' THEN 'New York Times'
ELSE 'Other'
END AS 'Source',
COUNT (url) 
FROM hacker_news
GROUP BY 1;

SELECT timestamp
FROM hacker_news
LIMIT 10;

SELECT timestamp,
strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

SELECT strftime('%H', timestamp)
AS 'HOUR', 
ROUND(AVG (score), 2)
AS 'AVG SCORE',
COUNT(*)
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1;

