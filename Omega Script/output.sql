SET LINESIZE 1000 TRIMSPOOL ON PAGESIZE 0 FEEDBACK OFF
spool C:\script\spool\output.csv append
select concat(concat(concat(concat(sum(totalprice),','),trunc(stime)),','),'Sample Outlet Name') from omegamaster.ST_SALESDETAILS where trunc(stime) = trunc(sysdate -1) group by trunc(stime);
exit;