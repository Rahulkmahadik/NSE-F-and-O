CREATE TABLE exchanges (
  exchange_id INTEGER PRIMARY KEY,
  exchange_code VARCHAR
);

CREATE TABLE instruments (
  instrument_id INTEGER PRIMARY KEY,
  instrument VARCHAR,
  symbol VARCHAR
);

CREATE TABLE expiries (
  expiry_id INTEGER PRIMARY KEY,
  expiry_dt DATE,
  strike_pr DOUBLE,
  option_typ VARCHAR
);

CREATE TABLE trades (
  trade_id INTEGER PRIMARY KEY,
  instrument_id INTEGER,
  exchange_id INTEGER,
  expiry_id INTEGER,
  open DOUBLE,
  high DOUBLE,
  low DOUBLE,
  close DOUBLE,
  settle_pr DOUBLE,
  contracts DOUBLE,
  val_inlakh DOUBLE,
  open_int DOUBLE,
  chg_in_oi DOUBLE,
  trade_timestamp TIMESTAMP
);

CREATE INDEX idx_trades_timestamp ON trades(trade_timestamp);
CREATE INDEX idx_instruments_symbol ON instruments(symbol);
CREATE INDEX idx_trades_exchange ON trades(exchange_id);
CREATE INDEX idx_trades_timestamp_brin ON trades USING BRIN(trade_timestamp);