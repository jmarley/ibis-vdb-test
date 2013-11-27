
SELECT *
 FROM  "content"."content"
 WHERE type='article';

-- 15:37:54,788 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=type:article
 
SELECT *
 FROM "content"."content"
 WHERE type = 'article'
 ORDER BY publishDate;

-- 15:38:19,685 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=type:article&sort=publishDate%20asc
 
SELECT *
 FROM "content"."content"
 WHERE type = 'article'
 ORDER BY publishdate ASC;
 
-- 15:38:40,234 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=type:article&sort=publishDate%20asc

SELECT *
 FROM "content"."content"
 WHERE type = 'article'
 ORDER BY headline;

-- 15:39:11,521 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=type:article&sort=headline%20asc
 
SELECT *
 FROM "content"."content"
 WHERE type = 'article'
 ORDER BY publishdate LIMIT 20;

-- 15:39:38,410 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=type:article&sort=publishDate%20asc&rows=20

SELECT *
 FROM "content"."content"
 WHERE type IN ('article', 'video');

-- 15:40:02,708 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=type:article%20OR%20type:video

SELECT *
 FROM "content"."content"
 WHERE type != 'video';

-- 15:40:31,770 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=-type:video
 
SELECT *
 FROM "content"."content"
 WHERE type = 'article'
 AND source = 'cnn';

-- 15:40:51,106 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=type:article%20AND%20source:cnn

SELECT *
 FROM "content"."content"
 WHERE source != 'cnn';

-- 15:41:17,173 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=-source:cnn
 
SELECT *
 FROM "content"."content"
 WHERE source IN ('cnn', 'cnnmoney');

-- 15:41:40,101 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=source:cnn%20OR%20source:cnnmoney
 
SELECT *
 FROM "content"."content"
 WHERE publishdate < '1 hour';

-- 15:42:51,443 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=publishDate:[*%20TO%20'1%20hour']

SELECT *
 FROM "content"."content"
 WHERE publishdate < '1 hour' LIMIT 7;
 
-- 15:43:13,432 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=publishDate:[*%20TO%20'1%20hour']&rows=7

SELECT *
 FROM "content"."content"
 WHERE publishdate > '10/1/2013'
 AND publishdate < '10/3/2013';

-- 15:43:45,277 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=publishDate:['10/1/2013'%20TO%20*]%20AND%20publishDate:[*%20TO%20'10/3/2013']

 
 SELECT * 
  FROM "content"."content"
  WHERE SOURCE = 'CNN'
  ORDER BY publishDate ASC

--  15:44:07,983 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=source:CNN&sort=publishDate%20asc
 
SELECT *
 FROM "content"."content"
 WHERE publishdate > '10/1/2013'
 AND publishdate < '10/3/2013' LIMIT 100;

--15:44:27,016 INFO  [Requesting {} with protocol {} on {}] GET http://mockibis-1381187054851.rhcloud.com/rest/mockibis/v1/master/content?v=1&q=publishDate:['10/1/2013'%20TO%20*]%20AND%20publishDate:[*%20TO%20'10/3/2013']&rows=100
