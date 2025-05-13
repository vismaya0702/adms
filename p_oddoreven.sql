CREATE DEFINER=`root`@`localhost` PROCEDURE `odd_even`(in num int)
BEGIN
declare r varchar(10);
if num>0
then 
set r ='positive';
elseif num<0
then 
set r='negative';
end if;
select num as Number,r as Result;
END