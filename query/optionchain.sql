--- Total traded volume per expiry date and strike price and option type
SELECT
  e.expiry_dt,
  e.strike_pr,
  e.option_typ,
  SUM(t.contracts) AS total_volume
FROM trades t
JOIN expiries e ON t.expiry_id = e.expiry_id
GROUP BY e.expiry_dt, e.strike_pr, e.option_typ
ORDER BY e.expiry_dt, e.strike_pr;


/*
expiry_dt	STRIKE_PR	OPTION_TYP	total_volume
2019-08-01	9600.0	    PE	        1050.0
2019-08-01	9600.0	    CE	        0.0
2019-08-01	9650.0	    CE	        0.0
2019-08-01	9650.0	    PE	        0.0
2019-08-01	9700.0	    PE	        6615.0
*/