CREATE DEFINER=`root`@`localhost` PROCEDURE `oddeven`(in num int)
BEGIN
declare r varchar(10);
if num%2=0
then
set r="even";
else 
set r="odd";
end if;
select num as Number,r as Result;
END