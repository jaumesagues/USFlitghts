SELECT Count(flightID) FROM flights;
SELECT Origin,AVG(ArrDelay),AVG(DepDelay) FROM flights GROUP BY Origin;
SELECT Origin,colYear,colMonth, AVG(ArrTime) FROM flights  GROUP BY colYear, colMonth ORDER BY Origin ASC;
SELECT City,colYear, colMonth, aVG(ArrTime) FROM flights LEFT JOIN usairports ON flights.Origin=usairports.IATA  GROUP BY colYear,colMonth ORDER BY City ASC;
SELECT UniqueCarrier,colYear, colMonth, COUNT(Cancelled) AS total_cancelled FROM flights WHERE Cancelled=1 GROUP BY colYear, colMonth ORDER BY total_cancelled DESC;
SELECT TailNum, SUM(Distance) as totalDistance FROM flights WHERE TailNum!="" GROUP BY TailNum ORDER BY totalDistance DESC LIMIT 10;
SELECT UniqueCarrier, AVG(ArrDelay) as avgDelay FROM flights GROUP BY UniqueCarrier HAVING avgDelay>10 ORDER BY avgDelay DESC;