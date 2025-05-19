

select currency_pair, YEAR(datetimevalue) AS yer, COUNT(currency_pair) AS count_ from DBMQL5.dbo.t_ohlc_h1 WHERE currency_pair = 'EURUSD' GROUP BY currency_pair, YEAR(datetimevalue) ORDER BY currency_pair, YEAR(datetimevalue)

select * from DBMQL5.dbo.t_ohlc_h1 WHERE currency_pair <> 'GBPUSD'
--DELETE from DBMQL5.dbo.t_ohlc_h1 WHERE currency_pair <> 'GBPUSD'

select * from DBMQL5.dbo.t_ohlc_h4 WHERE currency_pair <> 'GBPUSD'
--DELETE from DBMQL5.dbo.t_ohlc_h4 WHERE currency_pair <> 'GBPUSD'

select * from DBMQL5.dbo.t_ohlc_h4_engulfing WHERE currency_pair <> 'GBPUSD'
--DELETE from DBMQL5.dbo.t_ohlc_h4_engulfing WHERE currency_pair <> 'GBPUSD'


--================================================================================================================================================================================================================================================================================


SELECT currency_pair, decimalplaces FROM DBMQL5.dbo.s_decimal_places
--INSERT INTO DBMQL5.dbo.s_decimal_places VALUES ('AUDUSD',05)
--INSERT INTO DBMQL5.dbo.s_decimal_places VALUES ('USDCHF',05)
--INSERT INTO DBMQL5.dbo.s_decimal_places VALUES ('USDJPY',03)
--INSERT INTO DBMQL5.dbo.s_decimal_places VALUES ('EURGBP',05)




--DELETE from DBMQL5.dbo.t_ohlc_h4_engulfing

select * from DBMQL5.dbo.s_engulfing_type
select position_result, support, resistance, * from DBMQL5.dbo.t_ohlc_h4_engulfing WHERE position_result <> ''
select * from DBMQL5.dbo.t_ohlc_h4_engulfing WHERE verbose <> ''
select position_result, support, resistance, * from DBMQL5.dbo.t_ohlc_h4_engulfing WHERE engulfingid = 01

select b.* 
from DBMQL5.dbo.t_ohlc_h4 AS a INNER JOIN DBMQL5.dbo.t_ohlc_h4_detail AS b ON a.currency_pair = b.currency_pair AND a.ohlcstring = b.ohlcstring 
WHERE a.datetimevalue >= '2024-08-01'

select * from DBMQL5.dbo.t_ohlc_h4 WHERE currency_pair = 'USDJPY'
select * from DBMQL5.dbo.t_ohlc_h4 WHERE ohlcstring LIKE '%2023.11.08%' AND currency_pair = 'EURGBP' ORDER BY ohlcstring
select * from DBMQL5.dbo.t_ohlc_h4_detail WHERE ohlcstring LIKE '2023%12%28%' AND currency_pair = 'AUDUSD' ORDER BY ohlcstring
select * from DBMQL5.dbo.t_ohlc_h4_detail WHERE ohlcstring = '2023.03.17 08:00,0.87575,0.87829,0.87556,0.87769,13668,0' AND currency_pair = 'AUDUSD'
select * from DBMQL5.dbo.t_ohlc_h4_engulfing WHERE ohlcstring = '2023.03.17 08:00,0.87575,0.87829,0.87556,0.87769,13668,0' AND currency_pair = 'AUDUSD'

--select currency_pair, MIN(YEAR(datetimevalue)) as datetimevalue from DBMQL5.dbo.t_ohlc_h4 GROUP BY currency_pair ORDER BY MIN(YEAR(datetimevalue)) DESC
--select currency_pair, MIN(ohlcstring) as ohlcstring from DBMQL5.dbo.t_ohlc_h4_detail GROUP BY currency_pair ORDER BY MIN(ohlcstring) DESC
--SELECT TOP 1 * FROM DBMQL5.dbo.t_ohlc_h4_detail WHERE currency_pair = 'USDCHF'
--select * from DBMQL5.dbo.t_ohlc_h4_detail WHERE ohlcstring LIKE '%2016%01%01%' AND currency_pair = 'AUDUSD' ORDER BY ohlcstring

select a.datetimevalue, b.position, position_result, a.currency_pair, remark, b.ohlcstring, b.PL
from DBMQL5.dbo.t_ohlc_h4 AS a INNER JOIN DBMQL5.dbo.t_ohlc_h4_engulfing AS b ON a.currency_pair = b.currency_pair AND a.ohlcstring = b.ohlcstring 
WHERE a.currency_pair = 'AUDUSD' AND YEAR(a.datetimevalue) = 2023
--ORDER BY b.PL
ORDER BY a.datetimevalue

SELECT * FROM DBMQL5.dbo.t_sum_pips_log_allcurrency ORDER BY id DESC, yer DESC
--DELETE FROM DBMQL5.dbo.t_sum_pips_log_allcurrency WHERE id = 11
--UPDATE DBMQL5.dbo.t_sum_pips_log_allcurrency SET PL_Pips = ROUND(PL_Pips / 10, 0)
SELECT id, SUM(PL_Pips) AS PL_Pips, SUM(count) AS count FROM DBMQL5.dbo.t_sum_pips_log_allcurrency GROUP BY id ORDER BY SUM(PL_Pips) DESC


SELECT * FROM DBMQL5.dbo.t_sum_pips_log ORDER BY dtcreate DESC
--UPDATE DBMQL5.dbo.t_sum_pips_log SET PL_Pips = ROUND(PL_Pips / 10, 0)
SELECT * FROM DBMQL5.dbo.t_sum_pips_log WHERE id = 09 AND yer = 2023 ORDER BY dtcreate DESC
--SELECT * FROM DBMQL5.dbo.t_sum_pips_log WHERE currency_pair = 'GBPUSD' AND yer = 2023 ORDER BY dtcreate DESC
select SUM(PL) AS PL_Pips, COUNT(PL) AS COUNT_ from DBMQL5.dbo.t_ohlc_h4_engulfing
--DELETE FROM DBMQL5.dbo.t_sum_pips_log WHERE id = 11
--DELETE FROM DBMQL5.dbo.t_sum_pips_log WHERE yer > 2023
--DELETE FROM DBMQL5.dbo.t_sum_pips_log WHERE PL_Pips = 00
--DELETE FROM DBMQL5.dbo.t_sum_pips_log WHERE dtcreate > '2025-04-23'
--DELETE FROM DBMQL5.dbo.t_sum_pips_log WHERE currency_pair = 'EURUSD'
--select ROUND(AVG(size_of_25candle), 0) as avg_size_of_25candle from DBMQL5.dbo.t_ohlc_h4_detail 
--select DISTINCT recomendation_risk_reward from DBMQL5.dbo.t_ohlc_h4_engulfing WHERE position_result <> ''
--select * from DBMQL5.dbo.t_ohlc_h4_engulfing WHERE recomendation_risk_reward = '1:10.5'
--select * from DBMQL5.dbo.t_ohlc_h4_engulfing WHERE position_result = 'LOSS' AND recomendation_risk_reward = '1:10.5'
--select ohlcstring, remark, TP_pips, SL_pips, position, position_result from DBMQL5.dbo.t_ohlc_h4_engulfing WHERE position_result <> '' ORDER BY SL_pips DESC
--select ohlcstring, remark, TP_pips, SL_pips, position, position_result from DBMQL5.dbo.t_ohlc_h4_engulfing WHERE position_result <> '' ORDER BY TP_pips DESC
--select ohlcstring, remark, PL as PL2, position, * from DBMQL5.dbo.t_ohlc_h4_engulfing WHERE PL < 00 ORDER BY PL


--WITH CTE AS(SELECT id, currency_pair, timeframe, yer, PL_Pips,RN = ROW_NUMBER()OVER(PARTITION BY id, currency_pair, timeframe, yer, PL_Pips ORDER BY dtcreate DESC)FROM DBMQL5.dbo.t_sum_pips_log) DELETE FROM CTE WHERE RN > 1




SELECT YEAR(datetimevalue) AS year_, position_result
, COUNT(*) AS count_, ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ohlc_h4_engulfing WHERE position_result <> '' )), 2) AS percentage
, SUM(PL) AS PL
FROM DBMQL5.dbo.t_ohlc_h4_engulfing AS a INNER JOIN DBMQL5.dbo.t_ohlc_h4 AS b ON a.currency_pair = b.currency_pair AND a.ohlcstring = b.ohlcstring
WHERE position_result <> ''  
GROUP BY YEAR(datetimevalue), position_result
ORDER BY YEAR(datetimevalue), position_result


SELECT position_result
, COUNT(*) AS count_, ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ohlc_h4_engulfing )), 2) AS percentage
, SUM(PL) AS PL
FROM DBMQL5.dbo.t_ohlc_h4_engulfing
--WHERE position_result <> ''
GROUP BY position_result
ORDER BY position_result


SELECT position_result, recomendation_risk_reward
, COUNT(*) AS count_, ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ohlc_h4_engulfing )), 2) AS percentage
, SUM(PL) AS PL
FROM DBMQL5.dbo.t_ohlc_h4_engulfing
--WHERE position_result <> ''
GROUP BY position_result, recomendation_risk_reward
ORDER BY position_result, recomendation_risk_reward



--================================================================================================================================================================================================================================================================================


WITH EngulfingDetail AS (
SELECT a.datetimevalue, b.*
FROM DBMQL5.dbo.t_ohlc_h4 AS a INNER JOIN DBMQL5.dbo.t_ohlc_h4_engulfing AS b ON a.ohlcstring = b.ohlcstring AND a.currency_pair = b.currency_pair
WHERE position_result <> ''
)

SELECT DATEPART(HOUR, datetimevalue) as HOUR_, position_result
, COUNT(*) AS count_, ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM EngulfingDetail)), 2) AS percentage
FROM EngulfingDetail
GROUP BY DATEPART(HOUR, datetimevalue), position_result
ORDER BY DATEPART(HOUR, datetimevalue), position_result


--================================================================================================================================================================================================================================================================================


WITH percent_range AS (
SELECT
    CASE
        WHEN percent_change_candle BETWEEN 1 AND 10 THEN '1-10'
        WHEN percent_change_candle BETWEEN 11 AND 20 THEN '11-20'
        WHEN percent_change_candle BETWEEN 21 AND 30 THEN '21-30'
        WHEN percent_change_candle BETWEEN 31 AND 40 THEN '31-40'
        WHEN percent_change_candle BETWEEN 41 AND 50 THEN '41-50'
        WHEN percent_change_candle BETWEEN 51 AND 60 THEN '51-60'
        WHEN percent_change_candle BETWEEN 61 AND 70 THEN '61-70'
        WHEN percent_change_candle BETWEEN 71 AND 80 THEN '71-80'
        WHEN percent_change_candle BETWEEN 81 AND 90 THEN '81-90'
        WHEN percent_change_candle BETWEEN 91 AND 100 THEN '91-100'
        --WHEN percent_change_candle BETWEEN 101 AND 200 THEN '101-200'
        --WHEN percent_change_candle BETWEEN 201 AND 300 THEN '201-300'
        ELSE 'Over 300'
    END AS percent_range,
    position_result
FROM DBMQL5.dbo.t_ohlc_h4_engulfing
WHERE position_result <> ''
)

SELECT percent_range, position_result
, COUNT(*) AS count_, ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM percent_range)), 2) AS percentage
FROM percent_range
GROUP BY percent_range, position_result
ORDER BY percent_range, position_result


--================================================================================================================================================================================================================================================================================



SELECT engulfingid, position_result, recomendation_risk_reward
, COUNT(*) AS count_, ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ohlc_h4_engulfing WHERE engulfingid = 01 )), 2) AS percentage
FROM DBMQL5.dbo.t_ohlc_h4_engulfing
WHERE engulfingid = 01
GROUP BY engulfingid, position_result, recomendation_risk_reward

--UPDATE DBMQL5.dbo.t_ohlc_h4_engulfing 
--SET verbose = 'Market is range-bound with low volatility (91 pips range). Current candle shows bearish engulfing at Upper Range Resistance (75% of 91 pips range)'
--WHERE ohlcstring = '2024.12.05 04:00,1.26967,1.27094,1.26945,1.27053,3348,0'



--BUY
--1. Price ranged 50 pips from -50 to -10 bars, broke out 20 pips above the range high, then retested the range high on the last candle, followed by a bullish engulfing pattern rebounding 15 pips (75%).
--1. Price dropped over the last 10 candles, followed by a bullish engulfing pattern on the last candle that rebounded > 30% from the lowest swing.
--2. Price dropped over the last 15 candles, with a hammer rebounding > 20.27% from the lowest swing, followed by a bullish engulfing candle rebounding > 24.32%



select * from DBMQL5.dbo.t_ohlc_h4 WHERE ohlcstring BETWEEN '2024.11.29 00:00,1.26836,1.26896,1.26810,1.26856,455,0' AND '2024.12.05 04:00,1.26967,1.27094,1.26945,1.27053,3348,0'
select *, percent_close_price_of_1candle from DBMQL5.dbo.t_ohlc_h4_detail WHERE ohlcstring BETWEEN '2024.11.29 00:00,1.26836,1.26896,1.26810,1.26856,455,0' AND '2024.12.05 04:00,1.26967,1.27094,1.26945,1.27053,3348,0'


--================================================================================================================================================================================================================================================================================


select top 5000 * from DBMQL5.dbo.t_ohlc_h1 order by datetimevalue DESC
select top 500 * from DBMQL5.dbo.t_ohlc_h1_detail

select * from DBMQL5.dbo.t_random_simulation
select * from DBMQL5.dbo.t_random_simulation_result_grid
select * from DBMQL5.dbo.v_random_simulation_result_grid WHERE (id between 01 AND 27) AND [Total Trade] >= 100 ORDER BY [End Balance]

--Detail Sell Result, id = 02
select a.datetimevalue, c.sell_result, c.position, b.candletype, body_size, size_of_1candle, size_of_25candle, size_of_100candle, percent_body_to_candle, percent_body_to_25candle, 
 percent_body_to_100candle, percent_candle_to_25candle, percent_candle_to_100candle, percent_close_price_of_1candle, percent_close_price_of_25candle, 
 percent_close_price_of_100candle, percent_close_with_previous_close, ma_25, ma_50, ma_100, percent_close_with_ma_25, percent_close_with_ma_50, percent_close_with_ma_100, 
 bb_size, percent_body_to_bb, percent_candle_to_bb, percent_close_price_of_bb, 
 highest_price_next_25candle, lowest_price_next_25candle, close_to_highest_next_10candle_pips, close_to_lowest_next_10candle_pips, close_to_highest_next_25candle_pips, close_to_lowest_next_25candle_pips
from DBMQL5.dbo.t_ohlc_h1 AS a INNER JOIN DBMQL5.dbo.t_ohlc_h1_detail AS b ON a.ohlcstring = b.ohlcstring AND a.currency_pair = b.currency_pair
INNER JOIN DBMQL5.dbo.t_ideal_entry_recomendation_h1 AS c ON a.ohlcstring = c.ohlcstring AND c.id = 02 
WHERE c.buy_result <> '' AND YEAR(a.datetimevalue) > 2005 
ORDER BY a.datetimevalue --DESC

--Filter condition that is loss
select c.id, b.body_size, c.buy_result, ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ideal_entry_recomendation_h1 AS d WHERE d.id = c.id AND d.buy_result = c.buy_result)), 2) AS percentage
from DBMQL5.dbo.t_ohlc_h1 AS a INNER JOIN DBMQL5.dbo.t_ohlc_h1_detail AS b ON a.ohlcstring = b.ohlcstring AND a.currency_pair = b.currency_pair
INNER JOIN DBMQL5.dbo.t_ideal_entry_recomendation_h1 AS c ON a.ohlcstring = c.ohlcstring AND c.id = 02 
WHERE c.buy_result = 'Loss' AND YEAR(a.datetimevalue) > 2005
GROUP BY c.id, b.body_size, c.buy_result
ORDER BY ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ideal_entry_recomendation_h1 AS d WHERE d.id = c.id AND d.buy_result = c.buy_result)), 2)

select top 500 * from DBMQL5.dbo.t_ideal_entry_recomendation_h1 WHERE position IN ('TRUE','FALSE') ORDER BY ohlcstring DESC

--Percentage all position id = 02
SELECT position, COUNT(*) AS count_, ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ideal_entry_recomendation_h1 WHERE id = 02)), 2) AS percentage
FROM DBMQL5.dbo.t_ideal_entry_recomendation_h1
WHERE id = 02
GROUP BY position

--Percentage Buy P/L
SELECT buy_result, COUNT(*) AS count_, ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ideal_entry_recomendation_h1 WHERE id = 02)), 2) AS percentage
FROM DBMQL5.dbo.t_ideal_entry_recomendation_h1
WHERE id = 02 AND buy_result <> ''
GROUP BY buy_result

--Percentage Sell P/L
SELECT sell_result, COUNT(*) AS count_, ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ideal_entry_recomendation_h1 WHERE id = 02)), 2) AS percentage
FROM DBMQL5.dbo.t_ideal_entry_recomendation_h1
WHERE id = 02 AND sell_result <> ''
GROUP BY sell_result




--================================================================================================================================================================================================================================================================================

SELECT currency_pair, decimalplaces FROM DBMQL5.dbo.s_decimal_places
--INSERT INTO DBMQL5.dbo.s_decimal_places VALUES ('AUDUSD',05)
--INSERT INTO DBMQL5.dbo.s_decimal_places VALUES ('USDCHF',05)
--INSERT INTO DBMQL5.dbo.s_decimal_places VALUES ('USDJPY',03)

select top 100 * from DBMQL5.dbo.t_ohlc_h1 order by datetimevalue

select a.datetimevalue, a.open_price, a.high_price, a.low_price, a.close_price, b.* 
from DBMQL5.dbo.t_ohlc_h1 As a INNER JOIN DBMQL5.dbo.t_ohlc_h1_detail AS b on a.ohlcstring = b.ohlcstring
WHERE a.datetimevalue >= '2024-11-01'
ORDER BY a.datetimevalue


--================================================================================================================================================================================================================================================================================

select * from DBMQL5.dbo.s_calc_type
--UPDATE DBMQL5.dbo.s_calc_type SET name = 'Non-Martingale Trend Strategy' WHERE id = 02
--UPDATE DBMQL5.dbo.t_ideal_entry SET calctype = 02 WHERE id = 01

--DELETE DBMQL5.dbo.t_ideal_entry_recomendation_h1 WHERE id = 03
--DELETE DBMQL5.dbo.t_ideal_entry WHERE id = 03

select * from DBMQL5.dbo.t_ideal_entry
select * from DBMQL5.dbo.t_ideal_entry_recomendation_h1 WHERE id = 01 ORDER BY dtcreate
select * from DBMQL5.dbo.t_ideal_entry_recomendation_h1 WHERE buy_result IS NULL ORDER BY dtcreate
select * from DBMQL5.dbo.t_ideal_entry_recomendation_h1 WHERE buy_result IS NOT NULL ORDER BY dtcreate DESC
SELECT id, position, ohlcstring, buy_result, sell_result, dtcreate FROM DBMQL5.dbo.t_ideal_entry_recomendation_h1 ORDER BY dtcreate DESC
select * from DBMQL5.dbo.t_ideal_entry_recomendation_h1 WHERE position = 'None' AND sell_result = 'Profit'
--DELETE DBMQL5.dbo.t_ideal_entry_recomendation_h1 WHERE id = 02

SELECT position, COUNT(*) AS COUNT_, ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ideal_entry_recomendation_h1 WHERE id = 01)), 2) AS percentage
FROM DBMQL5.dbo.t_ideal_entry_recomendation_h1
WHERE id = 01
GROUP BY position
ORDER BY COUNT(*)

SELECT position, buy_result, sell_result, COUNT(*) AS count_, ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ideal_entry_recomendation_h1)), 2) AS percentage
FROM DBMQL5.dbo.t_ideal_entry_recomendation_h1
WHERE buy_result <> '' AND sell_result <> ''
GROUP BY position, buy_result, sell_result

--SELECT COUNT(*) AS count_ FROM DBMQL5.dbo.t_ohlc_h1_detail WHERE currency_pair = 'GBPUSD' and  (percent_body_to_candle BETWEEN -20 AND 0) 

Select recomendationh1.position
, ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ohlc_h1_detail AS detail2 WHERE currency_pair = 'GBPUSD' AND (candletype = 'DOJI'))), 2) AS percentage
, ROUND(((SELECT COUNT(*) FROM DBMQL5.dbo.t_ohlc_h1_detail WHERE currency_pair = 'GBPUSD' AND (candletype = 'DOJI')) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ohlc_h1_detail WHERE currency_pair = 'GBPUSD')), 2) as frequent_percentage
FROM DBMQL5.dbo.t_ideal_entry AS a INNER JOIN DBMQL5.dbo.t_ohlc_h1_detail as detailH1 ON a.currency_pair = detailH1.currency_pair INNER JOIN 
DBMQL5.dbo.t_ideal_entry_recomendation_h1 AS recomendationh1 ON detailH1.ohlcstring = recomendationh1.ohlcstring AND a.id = recomendationh1.id
WHERE a.currency_pair = 'GBPUSD' AND position <> '' AND (candletype = 'DOJI')
GROUP BY position

Select recomendationh1.buy_result, recomendationh1.sell_result
, ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ohlc_h1_detail AS detail2 WHERE currency_pair = 'GBPUSD' AND (candletype = 'DOJI'))), 2) AS percentage
, ROUND(((SELECT COUNT(*) FROM DBMQL5.dbo.t_ohlc_h1_detail WHERE currency_pair = 'GBPUSD' AND (candletype = 'DOJI')) * 100.0 / (SELECT COUNT(*) FROM DBMQL5.dbo.t_ohlc_h1_detail WHERE currency_pair = 'GBPUSD')), 2) as frequent_percentage
FROM DBMQL5.dbo.t_ideal_entry AS a INNER JOIN DBMQL5.dbo.t_ohlc_h1_detail as detailH1 ON a.currency_pair = detailH1.currency_pair INNER JOIN 
DBMQL5.dbo.t_ideal_entry_recomendation_h1 AS recomendationh1 ON detailH1.ohlcstring = recomendationh1.ohlcstring AND a.id = recomendationh1.id
WHERE a.currency_pair = 'GBPUSD' AND position <> '' AND (candletype = 'DOJI')
GROUP BY recomendationh1.buy_result, recomendationh1.sell_result



select b.position, c.open_price, c.high_price, c.low_price, c.close_price, d.* 
from DBMQL5.dbo.t_ideal_entry AS a INNER JOIN DBMQL5.dbo.t_ideal_entry_recomendation_h1 AS b ON a.id = b.id
INNER JOIN DBMQL5.dbo.t_ohlc_h1 as c ON a.currency_pair = c.currency_pair AND b.ohlcstring = c.ohlcstring
INNER JOIN DBMQL5.dbo.t_ohlc_h1_detail as d ON c.currency_pair = d.currency_pair AND c.ohlcstring = d.ohlcstring
WHERE a.id = 01 AND buy_result <> '' AND sell_result <> '' AND YEAR(c.datetimevalue) >= 2020


 


select id, filterid, filterstring, columnid, candletype, rangefrom, rangeto, frequent_percentage, recomend_buy_percentage, recomend_sell_percentage, recomend_no_position_percentage
, (recomend_buy_percentage + recomend_sell_percentage + recomend_no_position_percentage) AS SUM_percent
from DBMQL5.dbo.t_ideal_entry_filter
WHERE frequent_percentage >= 0.05
ORDER BY recomend_no_position_percentage

--================================================================================================================================================================================================================================================================================

select top 1 ohlcstring, currency_pair, candletype, body_size, size_of_1candle, size_of_25candle, size_of_100candle, percent_body_to_candle, percent_body_to_25candle, 
 percent_body_to_100candle, percent_candle_to_25candle, percent_candle_to_100candle, percent_close_price_of_1candle, percent_close_price_of_25candle, 
 percent_close_price_of_100candle, percent_close_with_previous_close, percent_close_with_ma_25, percent_close_with_ma_50, percent_close_with_ma_100, 
 highest_price_next_25candle, lowest_price_next_25candle, close_to_highest_next_10candle_pips, close_to_lowest_next_10candle_pips, close_to_highest_next_25candle_pips, close_to_lowest_next_25candle_pips, 
 bb_size, percent_body_to_bb, percent_candle_to_bb, percent_close_price_of_bb, dtcreate from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY dtcreate DESC

select * from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY dtcreate DESC
select * from DBMQL5.dbo.t_ohlc_h1_detail WHERE candletype = 'DOJI'

--select * from DBMQL5.dbo.t_ohlc_h1_detail WHERE ohlcstring = '2016.09.23 19:00,1.29572,1.29744,1.29534,1.29678,7198,0'


select * from DBMQL5.dbo.s_column_for_calculate

select DISTINCT percent_body_to_candle from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_body_to_candle
select DISTINCT percent_body_to_25candle from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_body_to_25candle
select DISTINCT percent_body_to_100candle from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_body_to_100candle

select DISTINCT percent_candle_to_25candle from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_candle_to_25candle
select DISTINCT percent_candle_to_100candle from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_candle_to_100candle

select DISTINCT percent_close_price_of_1candle from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_close_price_of_1candle
select DISTINCT percent_close_price_of_25candle from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_close_price_of_25candle
select DISTINCT percent_close_price_of_100candle from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_close_price_of_100candle

select DISTINCT percent_close_with_previous_close from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_close_with_previous_close

select DISTINCT percent_close_with_ma_25 from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_close_with_ma_25
select DISTINCT percent_close_with_ma_50 from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_close_with_ma_50
select DISTINCT percent_close_with_ma_100 from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_close_with_ma_100

select DISTINCT percent_body_to_bb from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_body_to_bb
select DISTINCT percent_candle_to_bb from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_candle_to_bb
select DISTINCT percent_close_price_of_bb from DBMQL5.dbo.t_ohlc_h1_detail ORDER BY percent_close_price_of_bb


--================================================================================================================================================================================================================================================================================




select * from DBMQL5.dbo.m_concept

--INSERT INTO DBMQL5.dbo.m_concept VALUES ('Liquidity Concepts', 'Distribution', 'The process of institutional buying (accumulation) and selling (distribution) over time.')
--INSERT INTO DBMQL5.dbo.m_concept VALUES ('Liquidity Concepts', 'Price Cycles', 'The process of institutional buying (accumulation) and selling (distribution) over time.')

--UPDATE DBMQL5.dbo.m_concept SET category = 'Liquidity Concepts' WHERE id = 18

--UPDATE DBMQL5.dbo.m_concept SET concept = 'Accumulation' WHERE id = 10

--================================================================================================================================================================================================================================================================================



SELECT TOP 10 id, combinationid, combination_filterid, combination_columnid, frequent_percentage, buy_winrate_percent, sell_winrate_percent
FROM DBMQL5.dbo.t_ideal_entry_filter_combination
ORDER BY combinationid DESC

--select combination_filterid, COUNT(combination_filterid) AS COUNT_ from DBMQL5.dbo.t_ideal_entry_filter_combination group by combination_filterid HAVING COUNT(combination_filterid) > 01

SELECT * FROM DBMQL5.dbo.t_ideal_entry_filter_combination ORDER BY buy_winrate_percent DESC
SELECT * FROM DBMQL5.dbo.t_ideal_entry_filter_combination ORDER BY sell_winrate_percent DESC
--SELECT * FROM DBMQL5.dbo.t_ideal_entry_filter_combination WHERE combination_filterid like '1|%'
--SELECT * FROM DBMQL5.dbo.t_ideal_entry_filter_combination WHERE combination_filterid like '%37|' ORDER BY combinationid DESC
--DELETE FROM DBMQL5.dbo.t_ideal_entry_filter_combination


--================================================================================================================================================================================================================================================================================



select * from DBMQL5.dbo.t_ideal_entry
select id, filterid, filterstring, columnid, candletype, rangefrom, rangeto, frequent_percentage, recomend_buy_percentage, recomend_sell_percentage, recomend_no_position_percentage from DBMQL5.dbo.t_ideal_entry_filter
select id, combinationid, combination_filterid, combination_columnid, frequent_percentage, buy_winrate_percent, sell_winrate_percent from DBMQL5.dbo.t_ideal_entry_filter_combination
select id, item, combinationid, buy_winrate_percent, sell_winrate_percent, combination_percent_frequent, remark from DBMQL5.dbo.t_ideal_entry_result
select * from DBMQL5.dbo.t_ideal_entry_result_detail

