--- Query plan for retrieving trades in the last 30 days
EXPLAIN ANALYZE
SELECT *
FROM trades
WHERE trade_timestamp >= (SELECT MAX(trade_timestamp) - INTERVAL '30 days' FROM trades);