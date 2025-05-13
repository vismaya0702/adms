CREATE DEFINER=`root`@`localhost` PROCEDURE `weekday`(in d date)
BEGIN
declare w varchar(15);
set w=Weekday(d);
select d as day , w as week;
END