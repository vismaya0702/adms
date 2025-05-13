CREATE DEFINER=`root`@`localhost` PROCEDURE `grade`(in mark int)
BEGIN
declare r varchar(10);
if mark>=90
then 
set r="A+";
elseif mark>=80
then 
set r="A";
elseif mark>=70
then
set r="B";
else
set r="fail";
end if;
select mark as Number,r as Result;
END