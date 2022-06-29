--use of while in pl/sql
-- sum of digits of a number
set serveroutput ON;

DECLARE
num1 NUMBER := &num1;
sum_of_digit NUMBER := 0;
temp NUMBER :=num1;

BEGIN
WHILE(temp>0)
LOOP
   sum_of_digit :=  sum_of_digit+ MOD(temp,10);
   temp := trunc(temp / 10);
End LOOP;

dbms_output.put_line('Sum of digits of ' ||num1 ||' = '||sum_of_digit);
End;
/