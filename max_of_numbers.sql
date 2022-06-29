--maximum of 3 numbers

set serveroutput on
declare 
num1 NUMBER := &num1;
num2 NUMBER := &num2;
num3 NUMBER := &num2;
BEGIN
  if (num1 > num2 AND num1>num3) THEN
    dbms_output.put_line( num1 || ' is greater' );
  ELSIF (num2 > num1 and num2>num3) THEN
    dbms_output.put_line( num2 || ' is greater' );
  ELSE
    dbms_output.put_line( num3 || ' is greater' );
  End IF;
End;
/