-- Reverse of a number

set serveroutput ON;

DECLARE
num1 NUMBER := &num1;
rev NUMBER :=0 ;
temp NUMBER :=num1;

BEGIN
WHILE(temp>0)
LOOP
   rev :=  rev*10 + MOD(temp,10);
   temp := trunc(temp / 10);
End LOOP;

dbms_output.put_line('Reverse of ' ||num1 ||' = '|| rev);
End;
/