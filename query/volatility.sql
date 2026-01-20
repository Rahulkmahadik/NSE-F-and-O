--- Rolling 7-day volatility of closing prices for the instrument 'NIFTY'
SELECT
  t.trade_timestamp,
  STDDEV(t.close) OVER (
    ORDER BY t.trade_timestamp
    ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
  ) AS rolling_volatility
FROM trades t
JOIN instruments i ON t.instrument_id = i.instrument_id
WHERE i.symbol = 'NIFTY';

/*
trade_timestamp	      rolling_volatility
2019-08-01 15:30:00	  NaN
2019-08-01 15:30:00	  53.740115
2019-08-01 15:30:00	  39.312858
2019-08-01 15:30:00	  41.302550
2019-08-01 15:30:00	  36.103473
*/
