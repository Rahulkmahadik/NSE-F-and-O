--- Top 10 instruments with the highest increase in open interest
SELECT
    i.symbol,
    SUM(t.chg_in_oi) AS total_oi_change
FROM trades t
JOIN instruments i ON t.instrument_id = i.instrument_id
GROUP BY i.symbol
ORDER BY total_oi_change DESC
LIMIT 10;
/*
SYMBOL	    total_oi_change
NIFTY	    1.903915e+10
BANKNIFTY   7.902776e+09
SBIN	    1.983474e+09
ASHOKLEY    1.137672e+09
IDFCFIRSTB  7.427160e+08
YESBANK	    7.186212e+08
VEDL	    6.210000e+08
TATAMOTORS  5.079780e+08
BHEL	    4.735125e+08
FEDERALBNK  4.491900e+08

*/