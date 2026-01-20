# NSE-F-and-O
# F&O Market Data Analytics Platform

## Objective
Design and implement a normalized relational database to store and analyze high-volume
Futures & Options (F&O) trading data from Indian exchanges.

## Dataset
NSE Future and Options Dataset (3 Months, ~2.5M rows)

## Schema Design
The schema follows 3NF normalization:
- exchanges: Exchange metadata
- instruments: Tradable symbols
- expiries: Contract definitions
- trades: Daily OHLC and volume data

A star schema was avoided to reduce data redundancy and ensure data integrity.

## Performance Considerations
- Indexed timestamp, symbol, exchange
- Designed for scalability to 10M+ rows
- Time-series queries optimized using window functions

## Tools Used
- DuckDB
- SQL
- Python
- dbdiagram.io

## Queries Implemented
- OI change analysis
- Rolling volatility
- Cross-exchange comparison
- Option chain aggregation
- High-volume detection

## Scalability
The design supports ingestion from NSE, BSE, and MCX with minimal schema changes.
