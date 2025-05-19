



select * from DBATTENDANCENEW.dbo.t_push_data_replication_history order by dtcreate DESC



SELECT * FROM DBHRD.dbo.v_employee_administration where sid = 61046
SELECT * FROM DBHRD.dbo.v_employee_administration where personalid = 80014161 order by sid

SELECT * FROM DBHRD.dbo.v_employee_administration where [Employee Name] like '%Ade Putra Hasibuan%' order by [Employee Name]

select * from dbhrd.dbo.t_bpjs WHERE sid IN (select sid from dbhrd.dbo.m_employee_adm where personalid = '80014161') AND mon = 04 AND yer = 2024 ORDER BY sid
select * from [192.168.1.19\LIVE].dbhrd.dbo.t_bpjs WHERE sid IN (select sid from dbhrd.dbo.m_employee_adm where personalid = '80014161') AND mon = 04 AND yer = 2024 ORDER BY sid


select * from dbhrd.dbo.t_bpjs WHERE sid = 61046 AND mon = 04 AND yer = 2024

select * from [192.168.1.19\LIVE].dbhrd.dbo.t_employee_mutation where status = 11 and YEAR(skdate) = 2024 and sid IN (select sid from dbhrd.dbo.m_employee_adm where personalid = '80014161')
select * from [192.168.1.19\LIVE].dbhrd.dbo.t_employee_date_changes where status = 11 and YEAR(skdate) = 2024 and sid IN (select sid from dbhrd.dbo.m_employee_adm where personalid = '80014161')
select * from [192.168.1.19\LIVE].dbhrd.dbo.m_employee_document where statusid IN (02, 03) and YEAR(DocDate) = 2024 and sid IN (select sid from dbhrd.dbo.m_employee_adm where personalid = '80014161')


--================================================================================================================================================================================================================================================================================



select * from [192.168.1.15\LIVE].DBATTENDANCENEW.dbo.s_synch_table where db_to = 'DBHRD' and from_unit = 01

select * from [192.168.1.15\LIVE].DBATTENDANCENEW.dbo.s_synch_table_item where  table_name = 't_bpjs_kes_monthly_header'

--INSERT INTO [192.168.1.15\LIVE].DBATTENDANCENEW.dbo.s_synch_table VALUES (NULL, NULL,'192.168.1.19','LIVE','DBHRD','DBHRD','t_bpjs_kes_monthly_header','DocNo',NULL, NULL, NULL, NULL,'period', NULL, NULL, NULL, NULL, NULL, 01, NULL, NULL, 00, 01, 00, 00, NULL)

--INSERT INTO [192.168.1.15\LIVE].DBATTENDANCENEW.dbo.s_synch_table_item VALUES ('t_bpjs_kes_monthly_header','t_bpjs_kes_monthly_detail','DocNo','SID',NULL)



--================================================================================================================================================================================================================================================================================

--Karyawan KIM tidak ter-insert ke table t_bpjs

SELECT b.SID, b.bpjs4, b.bpjs1
FROM DBHRD.dbo.t_bpjs_kes_monthly_header as a INNER JOIN DBHRD.dbo.t_bpjs_kes_monthly_detail as b on a.docno = b.docno
WHERE a.status <> 04 AND MONTH(period) = 11 AND YEAR(period) = 2024 
AND SID IN (select sid FROM DBHRD.dbo.t_employee_pph21_month as c where c.sid = b.sid and c.mon = MONTH(a.period) and c.year = YEAR(a.period))
AND SID NOT IN (Select SID from DBHRD.dbo.t_bpjs as c where c.sid = b.sid and c.mon = MONTH(a.period) and c.yer = YEAR(a.period))
ORDER BY b.SID


SELECT b.SID, b.bpjs4, b.bpjs1
FROM DBHRD.dbo.t_bpjs_kes_monthly_header as a INNER JOIN DBHRD.dbo.t_bpjs_kes_monthly_detail as b on a.docno = b.docno AND MONTH(period) = 11 AND YEAR(period) = 2024
WHERE a.status <> 04 
AND sid IN (select sid FROM DBHRD.dbo.t_employee_pph21_month as c where c.sid = b.sid and c.mon = 11 and c.year = 2024)
AND SID NOT IN (Select SID from DBHRD.dbo.t_bpjs as c where c.sid = b.sid and c.mon = 11 and c.yer = 2024)
ORDER BY b.SID


select * from dbhrd.dbo.t_bpjs where sid IN ('6277','8143','8181','8482','8483','8485','8489','8951','8955','8985','9070','9116','9120','9196','9218','9229','9231','9241','9620',
'9648','9680','9687','9771','9784','9788','9790','9909','9958','9977','10150','10154','10238','10316','10323','10407','10408','10410','10446','10480','10484','10488','10613','10657',
'10683','10698','10709','10731','10732','10733','10739','10760','10763','10765','10770','10835','10858','10882','61868','10884','10988','11000','11092','11095','11342','11622','11760',
'11761','11898','11902','11904','12197','12249','12263','12665','12911','12912','12935','13009','13017','13328','13367','13391','13470','13495','13571','13736','13756','13793','13880',
'13887','13889','14019','14033','14093','14101','14102','14110','14155','14159','14197','14202','14266','14314','14389','14620','14667','14723','14731','14761','14830','14857','14871',
'14874','14876','14936','15064','15094','15128','15233','15277','15288','15422','15424','15436','15468','15534','15672','15673','15675','15699','15700','15706','15879','15924','16628',
'16629','16632','16758','17153','17242','17340','17348','17383','17466','17493','17499','18033','18108','38318','38355','38365','38402','38477','38570','39269','39333','39452','39454',
'39455','39458','39459','39467','39472','39474','39637','40093','40251','40458','60731','60739','60741','60742','60743','60746','60757','60758','60759','60761','60793','60799','60802',
'60806','60814','60815','60868','60888','60898','60903','60904','60925','61069','61147','61180','61229','61251','61708') and mon = 11 and yer = 2024



--================================================================================================================================================================================================================================================================================




select * from DBMERLION.dbo.m_user where username like '%hanny%' or username like '%sufi%'
--update DBMERLION.dbo.m_user set password = '56917022120795178135110126132181331154252187701373' where userid = 'hanny.c' 
--update DBMERLION.dbo.m_user set password = '5215019467721434620581272332311194061271461722820' where userid = 'hanny.c' 





SELECT DISTINCT Company, [Payroll Area ID], [Payroll Area] FROM DBHRD.dbo.v_employee_administration WHERE statusid = 00 AND split = 00

--select *  from [192.168.1.16\LIVE].dbmerlion.dbo.m_user where username like '%marolop%'

SELECT * FROM DBHRD.dbo.s_business_area ORDER BY BisArNm 
SELECT * FROM DBHRD.dbo.s_business_area WHERE BisArID = 'PLNT12'
SELECT * FROM DBHRD.dbo.s_contract
SELECT * FROM DBHRD.dbo.m_employee_adm where sid = 61868
SELECT * FROM DBHRD.dbo.m_employee_adm_detail where sid = 61868
SELECT * FROM DBHRD.dbo.v_employee_administration where sid = 61868
SELECT * FROM DBHRD.dbo.v_employee_administration where personalid = '80001012' ORDER BY sid
SELECT * FROM DBHRD.dbo.m_employee_adm where employee_name like '%said sa%'
SELECT * FROM DBHRD.dbo.v_employee_administration where [Employee Name] like '%jauhar%' order by [Employee Name], sid

Select * from DBHRD.dbo.t_bpjs where sid = '61868' and mon = 11 and yer = 2024
Select * from DBHRD.dbo.t_bpjs where sid IN (SELECT sid FROM DBHRD.dbo.m_employee_adm where personalid = '80001012') and yer = 2024
--INSERT INTO [DBHRD].[dbo].t_bpjs SELECT '61868' as sid, 10 as mon, 2024 as yer, companyid, bisarid, gapok, tunjangan, bpjs1, bpjs4,idcreate, dtcreate, idupdate, dtupdate from DBHRD.dbo.t_bpjs where sid = '61868' and mon = 09 and yer = 2024


SELECT * FROM DBHRD.dbo.v_employee_administration where sid = '61868'
SELECT * FROM DBHRD.dbo.v_employee_administration where personalid = '80001012'



SELECT a.nama AS [Nama Iuran], a.no_jkn AS [Iuran BPJS Kes Card No], a.SID, b.PersonalID, b.[Employee Name], b.Company, b.[Birth Place], b.[Birth Date], b.Gender, b.SNKID, b.[Start Date Of Work], b.[Hiring Date], b.[Business Area], b.[Payroll Area], b.omname AS [OM Structure], b.Department, b.Position, b.Jabatan, [Employee Status]
FROM DBHRD.dbo.z_peserta_jkn as a LEFT OUTER JOIN DBHRD.dbo.v_employee_administration as b on a.sid = b.sid
ORDER BY b.Company DESC, b.[Business Area] DESC

Select DISTINCT a.* from v_user_business_area as a

SELECT DISTINCT Company, [Payroll Area ID], [Payroll Area] FROM DBHRD.dbo.v_employee_administration where Company = 'PAA' AND [Payroll Area] like '%balam%' ORDER BY [Payroll Area ID]

SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_header where bisarid = 'PLNT07' AND status <> 04 ORDER BY period
SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_header where period = '2024-11-30' AND bisarid = 'PAAKID'
SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_header where period = '2024-11-30' AND status = 02 AND companyid = 'PAA' 
SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_detail where sid = '61868'
SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_detail where personalid = '80001012'
SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_detail where bpjskes_card_no = '0003083802355'

SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_header where Docno = '7389300014' 
SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_detail where Docno = '7389300014' 
SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_detail where Docno = '7389300014' AND sid = '61868'
SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_detail where Docno = '7389300014' AND sid = 00 and personalid = 00 ORDER BY bpjskes_card_no

SELECT Docno, sid, SUM(bpjs1 + bpjs4) AS bpjs5 FROM DBHRD.dbo.t_bpjs_kes_monthly_detail where Docno = '7389300014' GROUP BY Docno, sid

--UPDATE DBHRD.dbo.t_bpjs_kes_monthly_header SET status = 00 WHERE Docno = 'Ok thanks ya'
--UPDATE DBHRD.dbo.t_bpjs_kes_monthly_header SET status = 04 WHERE Docno = '7389300014'
--UPDATE DBHRD.dbo.t_bpjs_kes_monthly_header SET status = 04 WHERE companyid <> 'PAA'
--UPDATE DBHRD.dbo.t_bpjs_kes_monthly_header SET companyid = 'NBK' WHERE Docno = '7389300014'

--UPDATE DBHRD.dbo.t_bpjs_kes_monthly_detail SET Docno = '7389300014' WHERE Docno = ''
--UPDATE DBHRD.dbo.t_bpjs_kes_monthly_detail SET bpjs4 = 140204 WHERE Docno = '7389300014' and sid = 0
--UPDATE DBHRD.dbo.t_bpjs_kes_monthly_detail SET companyid = 'PAA' WHERE Docno = '7389300014' and sid = 0

--INSERT INTO DBHRD.dbo.t_bpjs_kes_monthly_header VALUES ('7389300014','2024-03-22','2024-11-30',NULL,'PAAKID',03,NULL,02,'marolop.s','2024-03-22',NULL,NULL)

--DELETE FROM DBHRD.dbo.t_bpjs_kes_monthly_detail WHERE DOCNO = '7389300014' and bpjskes_card_no = '0003083802355'
--DELETE FROM DBHRD.dbo.t_bpjs_kes_monthly_detail WHERE DOCNO IN (SELECT DOCNO FROM DBHRD.dbo.t_bpjs_kes_monthly_header WHERE idcreate = 'sufi')
--DELETE FROM DBHRD.dbo.t_bpjs_kes_monthly_header WHERE idcreate = 'sufi'

--DELETE FROM DBHRD.dbo.t_bpjs_kes_monthly_detail WHERE DOCNO IN ('7389300014','7389300014','7389300014','7389300014','7389300014','7389300014','1589300014')
--DELETE FROM DBHRD.dbo.t_bpjs_kes_monthly_header WHERE DOCNO IN ('7389300014','7389300014','7389300014','7389300014','7389300014','7389300014','1589300014')

--INSERT INTO DBHRD.dbo.t_bpjs_kes_monthly_detail SELECT '3389300044' AS docno, SID, personalid, employeeid, companyid, locationid, omid, contractid, profileid, snkid, bpjskes_card_no, gapok, tunjangan, batasatas, batasbawah, bpjs1, bpjs4 FROM DBHRD.dbo.t_bpjs_kes_monthly_detail where Docno = '7189300028' 
--INSERT INTO DBHRD.dbo.t_bpjs_kes_monthly_detail SELECT '3389300044' AS docno, SID, personalid, employeeid, companyid, locationid, omid, contractid, profileid, snkid, '0003083802355' AS bpjskes_card_no, gapok, tunjangan, batasatas, batasbawah, bpjs1, bpjs4 FROM DBHRD.dbo.t_bpjs_kes_monthly_detail where Docno = '7389300014' AND sid = 00 and personalid = 00 AND bpjskes_card_no = '0003083802355' 
--INSERT INTO DBHRD.dbo.t_bpjs_kes_monthly_detail SELECT '3389300044' AS docno, SID, personalid, employeeid, companyid, locationid, omid, contractid, profileid, snkid, bpjskes_card_no, gapok, tunjangan, batasatas, batasbawah, bpjs1, bpjs4 FROM DBHRD.dbo.t_bpjs_kes_monthly_detail where Docno = '7189300028' AND sid = 00 and personalid = 00 AND bpjskes_card_no IN ('0003083802884','0003083802952','0003083803053','0003610504585','0003610518096','0003610524802','0003610528582','0003610536579','0003610540462','0003610549135','0003610552871','0003610558866','0003610566606','0003610568834','0003628896715','0003628898019')

--INSERT INTO DBHRD.dbo.t_bpjs_kes_monthly_detail VALUES ('7189300035',00,00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0003615523323',NULL,NULL,NULL,NULL,00,'204718')
--UPDATE DBHRD.dbo.t_bpjs_kes_monthly_detail SET bpjs4 = '204718' WHERE Docno = '3389300044'  AND bpjskes_card_no = '0003083802355'
--UPDATE DBHRD.dbo.t_bpjs_kes_monthly_detail SET bpjs1 = ROUND(bpjs4 / 5,0,0) WHERE Docno = '7189300035'  AND bpjskes_card_no IN ('0003615523323')
--UPDATE DBHRD.dbo.t_bpjs_kes_monthly_detail SET bpjs4 = bpjs4 - bpjs1 WHERE Docno = '7189300035'  AND bpjskes_card_no IN ('0003615523323')


SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_detail 
where docno = '7389300014' AND bpjskes_card_no IN ('0003610504585','0003610518096','0003610524802','0003610528582','0003610536579',
'0003610540462','0003610552871','0003610558866','0003610566606','0003610568834','0003628896715','0003628898019',
'0003083802884','0003083802952','0003083803053','0003083802355') 
ORDER BY bpjskes_card_no


SELECT a.period, a.bisarid, a.profileid
, b.*, c.employee_name, b.bpjs1 + b.bpjs4 AS bpjs5
--, COUNT(b.sid) as count_
FROM DBHRD.dbo.t_bpjs_kes_monthly_header as a inner join DBHRD.dbo.t_bpjs_kes_monthly_detail as b on a.docno = b.docno inner join DBHRD.dbo.m_employee_adm as c on b.sid = c.sid
WHERE a.period = '2024-11-30' and b.sid = '61868'
--GROUP BY a.period, a.bisarid, a.profileid
ORDER BY b.companyid

SELECT b.bpjskes_card_no, b.bpjskes_card_no, 0 as Nothing, 'PESERTA' AS PESERTA, b.bpjs1 + b.bpjs4 AS bpjs5
FROM DBHRD.dbo.t_bpjs_kes_monthly_header as a inner join DBHRD.dbo.t_bpjs_kes_monthly_detail as b on a.docno = b.docno 
WHERE a.period = '2024-11-30' 

SELECT b.bpjskes_card_no, b.bpjskes_card_no, c.[Employee Name], 0 as Nothing, 'PESERTA' AS PESERTA, b.bpjs1 + b.bpjs4 AS bpjs5, c.[Payroll Area ID], c.[Payroll Area]
FROM DBHRD.dbo.t_bpjs_kes_monthly_header as a inner join DBHRD.dbo.t_bpjs_kes_monthly_detail as b on a.docno = b.docno LEFT OUTER join DBHRD.dbo.v_employee_administration as c on b.sid = c.sid
WHERE a.period = '2024-11-30' AND a.status <> 04 AND a.Docno = '7389300014'
ORDER BY c.[Employee Name], c.[Payroll Area]

SELECT a.companyid, a.bisarid, a.period, b.SID, b.personalid, b.bpjskes_card_no, b.bpjs1, b.bpjs4, a.status, a.idcreate, a.dtcreate, a.idupdate, a.dtupdate, c.sid, c.Mon, c.yer, c.bpjs1, c.bpjs4
FROM DBHRD.dbo.t_bpjs_kes_monthly_header as a inner join DBHRD.dbo.t_bpjs_kes_monthly_detail as b on a.docno = b.docno 
LEFT OUTER JOIN DBHRD.dbo.t_bpjs as c on b.sid = c.sid and MONTH(a.period) = c.mon and YEAR(a.period) = c.yer
WHERE a.status IN (02, 03) AND c.sid IS NULL


SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_detail where bpjskes_card_no = '0003083802355'
Select * FROM [192.168.1.15\LIVE].DBATTENDANCENEW.dbo.m_bhl_adm_detail WHERE bpjskes_card_no = '0003083802355'
Select * FROM [192.168.1.15\LIVE].DBATTENDANCENEW.dbo.v_bhl_administration WHERE [BPJS Kesehatan] = '0003083802355'

Select a.employeeid, a.bpjskes_card_no, b.sid, b.bpjskes_card_no
--UPDATE a SET a.bpjskes_card_no = b.bpjskes_card_no
FROM [192.168.1.15\LIVE].DBATTENDANCENEW.dbo.m_bhl_adm_detail as a INNER JOIN DBHRD.dbo.t_bpjs_kes_monthly_detail as b ON a.employeeid = b.sid 


Select bpjskes_card_no, * from DBHRD.dbo.m_personal_data  where personalid = '80020713'
Select * from DBHRD.dbo.m_personal_data  where bpjskes_card_no = '0002465816804'

--UPDATE DBHRD.dbo.m_personal_data SET bpjskes_card_no = '0001490149653' WHERE personalid = 80020771

Select * from DBHRD.dbo.v_employee_administration  where bpjskes_card_no = '0003083802355'

Select * from DBHRD.dbo.t_payroll_monthly_closing where companyid = 'PAA' and bisarid = 'OFFC18' and profileid = 01 and closeperiod >= '2024-11-30' and status <> 4

Select * from DBHRD.dbo.t_payroll_monthly_closing where companyid = 'PAA' and bisarid = 'MKCP01' and profileid = 01 and closeperiod >= '2024-11-30' and status <> 4

Select * from DBHRD.dbo.t_payroll_monthly_closing where companyid = 'PAA' and bisarid = 'PLNT12' and profileid = 01 and closeperiod >= '2024-3-31' and status <> 4

--UPDATE DBHRD.dbo.t_payroll_monthly_closing SET status = 04 where docno = '9511100060'
--UPDATE DBHRD.dbo.t_payroll_monthly_closing SET status = 00 where docno = '9511100060'
--UPDATE DBHRD.dbo.t_payroll_monthly_closing SET status = 04 where companyid = 'PAA' and bisarid = 'OFFC10' and profileid = 01 and closeperiod >= '2024-3-31' and status <> 4



SELECT * FROM DBHRD.dbo.v_bpjs_kes_monthly_header

select * from DBHRD.dbo.s_doc_type_number_range WHERE doctypeid = '893'
--UPDATE DBHRD.dbo.s_doc_type_number_range SET current_running = 00 WHERE doctypeid = '893'

--SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_header LEFT OUTER JOIN DBHRD.dbo.s_company ON dbo.t_bpjs_kes_monthly_header.companyid = DBHRD.dbo.s_company.companyid


SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_detail WHERE sid = '61868'



SELECT * FROM [192.168.1.16\LIVE].DBPAYMENT.dbo.t_payable WHERE docno = '1040188778'


SELECT * FROM [192.168.1.15\LIVE].DBATTENDANCENEW.dbo.m_bhl_adm_detail where employeeid = '42000164'

--UPDATE [192.168.1.15\LIVE].DBATTENDANCENEW.dbo.m_bhl_adm_detail SET bpjskes_card_no = '' WHERE employeeid = ''

--UPDATE DBHRD.dbo.m_personal_data SET bpjskes_card_no = '0002465816804' WHERE personalid = 80020713

--UPDATE DBHRD.dbo.m_personal_data SET bpjskes_card_no = '0000259410576' WHERE personalid IN (SELECT personalid FROM DBHRD.dbo.m_employee_adm WHERE sid = '61868')

Select * from DBHRD.dbo.m_personal_data  where bpjskes_card_no = '0000259410576'

Select * from DBHRD.dbo.v_employee_administration  where bpjskes_card_no = '0000259410576'



--INSERT INTO [192.168.1.19\LIVE].[DBHRD].[dbo].t_bpjs
Select * from [DBHRD].[dbo].t_bpjs where sid = '61868' and mon = 11 and yer = 2024

--DELETE [DBHRD].[dbo].t_bpjs where sid = '61868' and mon = 11 and yer = 2024

Select * from [DBHRD].[dbo].t_bpjs where bisarid = 'PAAKID' and mon = 11 and yer = 2024
Select * from [DBHRD].[dbo].t_bpjs where bisarid = 'PAAKID' and mon = 11 and yer = 2024 and idcreate <> 'sufi'

--DELETE [DBHRD].[dbo].t_bpjs where bisarid = 'PAAKID' and mon = 11 and yer = 2024

--UPDATE DBHRD.dbo.t_bpjs_kes_monthly_header SET companyid = LTRIM(RTRIM(companyid))
--UPDATE DBHRD.dbo.t_bpjs_kes_monthly_detail SET companyid = LTRIM(RTRIM(companyid))
--UPDATE DBHRD.dbo.t_bpjs SET companyid = LTRIM(RTRIM(companyid))



SELECT * FROM DBHRD.dbo.t_bpjs_kes_monthly_header where idcreate = 'hanny.c'

Select * from [DBHRD].[dbo].t_bpjs where bisarid = 'PLNT12' and mon = 11 and yer = 2024


Select * from [DBHRD].[dbo].t_bpjs where sid = '61868' and mon = 11 and yer = 2024
Select * from [DBHRD].[dbo].t_bpjs_tk where sid = '61868' and mon = 11 and yer = 2024
Select * from [DBHRD].[dbo].t_jaminan_pensiun where sid = '61868' and mon = 11 and yer = 2024
Select * from [DBHRD].[dbo].t_insurance_monthly_summary where personalid = '80020636' and mon = 11 and yer = 2024

--================================================================================================================================================================================================================================================================================


select TOP 1 * from [192.168.1.16\LIVE].dbmerlion.dbo.s_phg_system ORDER BY systemid DESC

select TOP 1 * from dbmerlion.dbo.s_phg_system ORDER BY systemid DESC

select * from DBMERLION.dbo.m_user where username like '%vikri%'

select * from dbmerlion.dbo.s_phg_system where system_name like '%bpjs kes%' OR system_name like '%person%' OR system_name = 'Payroll Scheme'
select * from dbmerlion.dbo.s_phg_system WHERE system_group = 'HRD' ORDER BY systemid DESC
select * from dbmerlion.dbo.s_phg_system WHERE systemid IN ('2900007','16156','16157','16166','16356')
--update dbmerlion.dbo.s_phg_system set display_menu = 1 where systemid = '2900007'
--update dbmerlion.dbo.s_phg_system set display_menu = 0 where systemid IN ('16156','16157','16166','16356')
select * from dbmerlion.dbo.s_app_phg_system WHERE systemid IN ('2900007','16156')
--INSERT INTO DBMERLION.dbo.s_phg_system (systemid, system_name, parentid, system_group, system_type, display_menu, idcreate, dtcreate) NBKUES ('2900007', 'BPJS Kesehatan Monthly Entry', '998944', 'HRD', 'T', 1, 'hendry.t', GETDATE())
--INSERT INTO DBMERLION.dbo.s_app_phg_system (appid, systemid) NBKUES ('HRD', 2900007)

--ALTER TABLE dbmerlion.dbo.s_app_phg_system ADD minimum_version [varchar](20) NULL

select * from dbmerlion.dbo.m_role
select * FROM DBMERLION.dbo.m_user_auth WHERE roleid IN (select roleid from dbmerlion.dbo.m_role_auth where systemid in ('2900007','0000'))
select * FROM DBMERLION.dbo.m_user_auth WHERE userid = 'jessy' AND roleid IN (select roleid from dbmerlion.dbo.m_role_auth where systemid in ('2900007'))
--INSERT INTO dbmerlion.dbo.m_role NBKUES ('HRD_BPJS','HRD_BPJS','','hendry.t', GETDATE(),NULL, NULL)
select * from dbmerlion.dbo.m_role_auth where systemid IN ('2900007','0000')
--INSERT INTO dbmerlion.dbo.m_role_auth NBKUES ('HRD_UPLOAD_BPJS','2900007','rnex')
--INSERT INTO dbmerlion.dbo.m_role_auth NBKUES ('HRD_BPJS_ADMIN','2900007','rnex')
--INSERT INTO dbmerlion.dbo.m_role_auth NBKUES ('HRD_ALL','2900007','rnex')
--INSERT INTO dbmerlion.dbo.m_role_auth NBKUES ('hrd_hr','2900007','rnex')
--INSERT INTO dbmerlion.dbo.m_role_auth NBKUES ('HRD_HR_view','2900007','rnex')

select * from DBMERLION.dbo.m_user_auth where userid = 'vikri.siregar' order by roleid
select * from DBMERLION.dbo.m_user_auth where roleid = 'HRD_BPJS' order by userid
--insert into DBMERLION.dbo.m_user_auth VALUES ('vikri.siregar','HRD_BPJS')

--insert into DBHRD.dbo.m_user_business_area 
select 'chrisna.r' as userid, BisArId, '1' as isdefault from DBHRD.dbo.m_user_business_area as w where w.BisArId not in 
(select BisArId from DBHRD.dbo.m_user_business_area where userid = 'chrisna.r') and userid = 'ricky'
--update DBHRD.dbo.m_user_business_area set isdefault = 1 where userid = 'achmadtahir'   AND BisArId = 'PLNT15'
--delete from DBHRD.dbo.m_user_business_area where userid = 'achmadtahir' AND BisArId = 'PAAKID'

select * from DBHRD.dbo.s_doc_type ORDER BY doctypeid DESC
select * from DBHRD.dbo.s_doc_type WHERE doctypeid = '893'
--DELETE DBHRD.dbo.s_doc_type WHERE doctypeid = '889'
--UPDATE DBHRD.dbo.s_doc_type SET doctypename = 'Insentif Produksi Mill Scheme' WHERE doctypeid = '584'
select * from DBHRD.dbo.s_doc_type_status WHERE doctypeid = '893'
select * from DBHRD.dbo.s_doc_type_number_range WHERE doctypeid = '893'

select * from DBMERLION.dbo.s_doc_type_status WHERE doctypeid = '893'
--UPDATE DBMERLION.dbo.s_doc_type_status SET editable = 01 WHERE doctypeid = 893 AND statusid = 00

--INSERT INTO DBHRD.dbo.s_doc_type (doctypeid, doctypename, header_unique) NBKUES ('893', 'BPJS Kesehatan Monthly Entry', 0)

--INSERT INTO DBHRD.dbo.s_doc_type_status (doctypeid, statusid, editable, printable) NBKUES ('893', 0, 1, 0)
--INSERT INTO DBHRD.dbo.s_doc_type_status (doctypeid, statusid, editable, printable) NBKUES ('893', 2, 0, 0)
--INSERT INTO DBHRD.dbo.s_doc_type_status (doctypeid, statusid, editable, printable) NBKUES ('893', 4, 0, 0)
--INSERT INTO DBHRD.dbo.s_doc_type_status (doctypeid, statusid, editable, printable) NBKUES ('893', 3, 0, 0)

--DELETE DBHRD.dbo.s_doc_type_number_range WHERE doctypeid IN ('584', '585', '586')
--INSERT INTO DBHRD.dbo.s_doc_type_number_range NBKUES ('893', 1, '893', '', 0, 10)

--USE [DBHRD]
--CREATE TABLE [dbo].[s_doc_type_number_range](
--	[doctypeid] [smallint] NOT NULL,	[use_serverid] [bit] NOT NULL,	[prefix] [varchar](5) NOT NULL,	[postfix] [varchar](5) NOT NULL,	[current_running] [int] NOT NULL,	[id_length] [tinyint] NOT NULL,
-- CONSTRAINT [PK_s_doc_type_number_range] PRIMARY KEY CLUSTERED 
--(	[doctypeid] ASC)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]
--GO
--ALTER TABLE [dbo].[s_doc_type_number_range]  WITH CHECK ADD  CONSTRAINT [FK_s_doc_type_number_range_s_doc_type] FOREIGN KEY([doctypeid])
--REFERENCES [dbo].[s_doc_type] ([doctypeid])
--GO
--ALTER TABLE [dbo].[s_doc_type_number_range] CHECK CONSTRAINT [FK_s_doc_type_number_range_s_doc_type]
--GO

----SELECT top 1 taskid FROM DBHRD.dbo.m_doc_task order by taskid desc
select * from DBHRD.dbo.m_doc_task where doctype IN ('893') order by doctype, taskid

--INSERT INTO DBHRD.dbo.m_doc_task (taskid, doctype, taskname, fromstatus, tostatus, has_reason, idcreate, dtcreate) NBKues (291, '893', 'Released BPJS Kesehatan Monthly Entry', 0, 2, 0, 'hendry.t', GETDATE())
--INSERT INTO DBHRD.dbo.m_doc_task (taskid, doctype, taskname, fromstatus, tostatus, has_reason, idcreate, dtcreate) NBKues (292, '893', 'Re-open BPJS Kesehatan Monthly Entry', 2, 0, 1, 'hendry.t', GETDATE())
--INSERT INTO DBHRD.dbo.m_doc_task (taskid, doctype, taskname, fromstatus, tostatus, has_reason, idcreate, dtcreate) NBKues (293, '893', 'Re-open from cancelled BPJS Kesehatan Monthly Entry', 4, 0, 1, 'hendry.t', GETDATE())
--INSERT INTO DBHRD.dbo.m_doc_task (taskid, doctype, taskname, fromstatus, tostatus, has_reason, idcreate, dtcreate) NBKues (294, '893', 'Cancelled BPJS Kesehatan Monthly Entry', 0, 4, 1, 'hendry.t', GETDATE())

select * from  DBHRD.dbo.m_doc_task_auth where taskid in (select taskid from DBHRD.dbo.m_doc_task where doctype = '893')

--INSERT INTO DBHRD.dbo.m_doc_task_auth
SELECT DISTINCT a.userid, b.taskid
FROM DBMERLION.dbo.m_user_auth AS a CROSS JOIN DBHRD.dbo.m_doc_task AS b
WHERE a.roleid IN ('HRD_BPJS','HRD_ALL','HRD_UPLOAD_BPJS','HRD_BPJS_ADMIN','hrd_hr') AND b.doctype = 893 
AND b.taskid not in (select taskid from DBHRD.dbo.m_doc_task_auth as c where c.userid = a.userid)
ORDER BY a.userid, b.taskid


--insert into dbhrd.dbo.s_pro_autho select 'vikri.siregar' as userid, 01 AS profileid


--================================================================================================================================================================================================================================================================================


--DROP TABLE DBHRD.dbo.t_bpjs_kes_monthly_detail
--DROP TABLE DBHRD.dbo.t_bpjs_kes_monthly_header


USE [DBHRD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_bpjs_kes_monthly_header](
	[Docno] [varchar](20) NOT NULL,
	[DocDate] [date] NOT NULL,
	[period] [date] NOT NULL,
	[companyid] [nvarchar](20) NULL,
	[bisarid] [nvarchar](20) NULL,
	[profileid] [smallint] NULL,
	[remark] [varchar](1000) NULL,
	[status] [smallint] NOT NULL,
	[idcreate] [nchar](20) NULL,
	[dtcreate] [smalldatetime] NULL,
	[idupdate] [nchar](20) NULL,
	[dtupdate] [smalldatetime] NULL,
 CONSTRAINT [PK_t_bpjs_kes_monthly_header] PRIMARY KEY CLUSTERED 
(	[Docno] ASC)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]
GO


USE [DBHRD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_bpjs_kes_monthly_detail](
	[docno] [varchar](20) NOT NULL,
	[SID] [bigint] NOT NULL,
	[personalid] [bigint] NOT NULL,
	[employeeid] [varchar](15) NULL,
	[companyid] [nvarchar](20) NULL,
	[locationid] [varchar](10) NULL,
	[omid] [varchar](10) NULL,
	[contractid] [varchar](20) NULL,
	[profileid] [smallint] NULL,
	[snkid] [nvarchar](3) NULL,
	[bpjskes_card_no] [varchar](20) NULL,
	[gapok] [decimal](12, 2) NULL,
	[tunjangan] [decimal](12, 2) NULL,
	[batasatas] [decimal](12, 2) NULL,
	[batasbawah] [decimal](12, 2) NULL,
	[bpjs1] [decimal](12, 2) NULL,
	[bpjs4] [decimal](12, 2) NULL,
 CONSTRAINT [PK_t_bpjs_kes_monthly_detail] PRIMARY KEY CLUSTERED 
(	[docno] ASC,	[SID] ASC)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY]
GO


USE [DBHRD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_bpjs_kes_monthly_header]
AS
SELECT        dbo.t_bpjs_kes_monthly_header.Docno AS [Document No], dbo.t_bpjs_kes_monthly_header.DocDate AS [Document Date], dbo.t_bpjs_kes_monthly_header.Period, dbo.t_bpjs_kes_monthly_header.companyid AS [Company ID], DBMERLION.dbo.s_company.display_name AS Company, dbo.t_bpjs_kes_monthly_header.bisarid AS [Payroll Area ID], 
                         dbo.s_business_area.BisArNm AS [Payroll Area], dbo.t_bpjs_kes_monthly_header.profileid, dbhrd.dbo.s_profile.profilename AS Profile, dbo.t_bpjs_kes_monthly_header.Remark, dbo.t_bpjs_kes_monthly_header.status AS [Status ID], dbo.s_doc_status.statusname AS Status, 
                         dbo.t_bpjs_kes_monthly_header.idcreate AS [Created By], dbo.t_bpjs_kes_monthly_header.dtcreate AS [Created Date], dbo.t_bpjs_kes_monthly_header.idupdate AS [Updated By], 
                         dbo.t_bpjs_kes_monthly_header.dtupdate AS [Updated Date]
FROM            dbo.t_bpjs_kes_monthly_header INNER JOIN
                         dbo.s_business_area ON dbo.t_bpjs_kes_monthly_header.bisarid = dbo.s_business_area.BisArID INNER JOIN
                         dbo.s_doc_status ON dbo.t_bpjs_kes_monthly_header.status = dbo.s_doc_status.statusid INNER JOIN dbhrd.dbo.s_profile on dbo.t_bpjs_kes_monthly_header.profileid = dbhrd.dbo.s_profile.profileid INNER JOIN DBMERLION.dbo.s_company ON dbo.t_bpjs_kes_monthly_header.companyid = DBMERLION.dbo.s_company.companyid
GO




USE [DBHRD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_bpjs_kes_monthly_detail]
AS
SELECT        a.docno AS [Document No], a.SID, a.personalid, a.employeeid, g.employee_name, a.companyid, a.locationid, b.locationname, a.contractid, f.contractname, a.omid, c.omname, a.profileid, d.profilename, a.snkid, e.jlhjiwa, a.bpjskes_card_no, 
                         a.gapok, a.tunjangan, a.batasatas, a.batasbawah, a.bpjs1, a.bpjs4
FROM            dbo.t_bpjs_kes_monthly_detail AS a LEFT OUTER JOIN
                         dbo.s_location AS b ON a.locationid = b.locationid LEFT OUTER JOIN
                         dbo.s_structure_om AS c ON a.omid = c.omid LEFT OUTER JOIN
                         dbo.s_profile AS d ON a.profileid = d.profileid LEFT OUTER JOIN
                         dbo.s_status_dependents AS e ON a.snkid = e.snkid LEFT OUTER JOIN
                         dbo.s_contract AS f ON a.contractid = f.contractid LEFT OUTER JOIN
                         dbo.m_employee_adm AS g ON a.SID = g.sid
GO


--================================================================================================================================================================================================================================================================================


USE [DBHRD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_level](
	[levelid] [nvarchar](50) NOT NULL,
	[levelgrade] [nvarchar](10) NULL,
	[levelname] [nvarchar](50) NULL,
	[idcreate] [varchar](30) NULL,
	[dtcreate] [smalldatetime] NULL,
	[idupdate] [varchar](30) NULL,
	[dtupdate] [smalldatetime] NULL
) ON [PRIMARY]
GO


--ALTER TABLE DBHRD.dbo.s_position ADD position_groupid int NULL


USE [DBHRD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[s_position_group](
	[position_groupid] [int] NOT NULL,
	[position_groupname] [nvarchar](max) NULL,
	[seq] [smallint] NULL,
 CONSTRAINT [PK_s_position_group] PRIMARY KEY CLUSTERED 
(	[position_groupid] ASC)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


USE [DBHRD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER VIEW [dbo].[v_employee_administration]
AS
SELECT        dbo.m_employee_adm.sid AS SID, dbo.m_employee_adm.personalid, dbo.m_employee_adm.employeeid AS [Employee ID], dbo.m_employee_adm.employee_name AS [Employee Name], dbo.m_employee_adm_detail.docdate AS [Document Date], 
                         dbo.m_employee_adm.companyid AS Company, dbo.m_employee_address.address, dbo.m_employee_adm.birthplace AS [Birth Place], dbo.m_employee_adm.birthdate AS [Birth Date], dbo.m_employee_adm.genderid, dbo.s_gender.gendername AS Gender, 
                         dbo.s_religion.religionname AS Religion, dbo.s_identity_type.idname AS [Identity Type], dbo.s_marital.maritalname AS Marital, dbo.m_employee_adm.marital_since AS [Marital Since], 
                         dbo.m_employee_adm_detail.startdate_of_work AS [Start Date Of Work], Action.startdate as [Hiring Date], resign.resigndt AS [Resign Date], dbo.s_Department.DEPTName AS Department, dbo.s_jabatan.jabatanname AS Jabatan, dbo.s_business_area.BisArNm AS [Payroll Area], 
                         dbo.s_plant.plantname AS Plant, dbo.m_employee_adm_detail.remark, dbo.s_record_status.statusname AS Status, dbo.m_employee_adm_detail.BisArId AS [Payroll Area ID], dbo.s_Department.DEPTID AS [Department ID], 
                         dbo.s_position.positionid AS [Position ID], dbo.s_position.positionname AS Position, dbo.s_position_group.position_groupname AS [Position Group], dbo.m_employee_adm_detail.startdate_of_contract AS [Contract Start Date], 
                         dbo.m_employee_adm_detail.finishdate_of_contract AS [Contract Finished Date], dbo.m_employee_adm_detail.contractid AS [Contract ID], dbo.s_contract.contractname AS [Employee Status], 
                         dbo.s_section.sectionName AS Section, dbo.m_employee_adm.statusid, dbo.m_employee_adm_detail.jabatanid AS [Jabatan ID], dbo.m_employee_adm_detail.golonganid AS [Golongan ID], s_level.levelname AS [Level Golongan], 
                         dbo.m_employee_adm_detail.golid AS [Gol ID], dbo.s_gol.golname as [Golongan], dbo.m_employee_adm.split, dbo.s_section.sectionid, dbo.m_employee_adm_detail.omid, dbo.m_employee_adm_detail.locationid, 
                         dbo.s_location.locationname AS [Business Area], dbo.m_employee_adm_detail.employee_ktp AS [Card ID No], s_employee_payroll_profile.profileid, s_profile.profilename, dbo.s_structure_om.omname, dbo.m_employee_adm_detail.SNKID, dbo.m_employee_adm.religionid, dbo.m_employee_adm_detail.NPWP, dbo.m_employee_adm_detail.employee_ktp AS NIK, dbo.m_personal_data.bpjskes_card_no
FROM            dbo.s_identity_type RIGHT OUTER JOIN
                         dbo.m_employee_adm ON dbo.s_identity_type.idtype = dbo.m_employee_adm.idtype LEFT OUTER JOIN
                         dbo.s_gender ON dbo.m_employee_adm.genderid = dbo.s_gender.genderid LEFT OUTER JOIN
                         dbo.s_marital ON dbo.m_employee_adm.maritalid = dbo.s_marital.maritalid LEFT OUTER JOIN
                         dbo.s_record_status ON dbo.m_employee_adm.statusid = dbo.s_record_status.statusid LEFT OUTER JOIN
                         dbo.s_religion ON dbo.m_employee_adm.religionid = dbo.s_religion.religionid LEFT OUTER JOIN
                         dbo.s_business_area LEFT OUTER JOIN
                         dbo.m_employee_adm_detail ON dbo.s_business_area.BisArID = dbo.m_employee_adm_detail.BisArId LEFT OUTER JOIN
                         dbo.s_Department ON dbo.m_employee_adm_detail.deptid = dbo.s_Department.DEPTID ON dbo.m_employee_adm.sid = dbo.m_employee_adm_detail.SID LEFT OUTER JOIN
                         dbo.s_jabatan ON dbo.m_employee_adm_detail.jabatanid = dbo.s_jabatan.jabatanid LEFT OUTER JOIN
                         dbo.s_contract ON dbo.m_employee_adm_detail.contractid = dbo.s_contract.contractid LEFT OUTER JOIN
                         dbo.s_position ON dbo.m_employee_adm_detail.positionid = dbo.s_position.positionid LEFT OUTER JOIN
                         dbo.s_plant ON dbo.m_employee_adm_detail.plantid = dbo.s_plant.plantid LEFT OUTER JOIN
                         dbo.m_employee_address ON dbo.m_employee_adm.sid = dbo.m_employee_address.SID AND dbo.m_employee_address.AddrTypeID = 5 LEFT OUTER JOIN
                         dbo.s_section ON dbo.s_section.sectionid = dbo.m_employee_adm_detail.sectionid LEFT OUTER JOIN
                         dbo.s_location ON dbo.s_location.locationid = dbo.m_employee_adm_detail.locationid LEFT OUTER JOIN dbo.s_gol ON dbo.s_gol.golid = dbo.m_employee_adm_detail.golid LEFT OUTER JOIN
                         dbo.s_level ON dbo.m_employee_adm_detail.golonganid = dbo.s_level.levelid LEFT OUTER JOIN s_employee_payroll_profile ON dbo.m_employee_adm.sid = dbo.s_employee_payroll_profile.sid LEFT OUTER JOIN s_structure_om  ON dbo.m_employee_adm_detail.omid = dbo.s_structure_om.omid LEFT OUTER JOIN
						 dbo.s_position_group on dbo.s_position.position_groupid = dbo.s_position_group.position_groupid LEFT OUTER JOIN [DBHRD].[dbo].[m_employee_Action]  As Action On dbo.m_employee_adm.[SID] = Action.[SID] And Action.ActTypeID = 06 LEFT OUTER JOIN 
						 DBHRD.dbo.t_employee_resignation as resign ON dbo.m_employee_adm.sid = resign.SID AND resign.status IN (02, 03) LEFT OUTER JOIN m_personal_data ON dbo.m_employee_adm.personalid = dbo.m_personal_data.personalid LEFT OUTER JOIN s_profile ON s_employee_payroll_profile.profileid = s_profile.profileid

GO

--================================================================================================================================================================================================================================================================================




