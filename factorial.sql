-- 7. Write a PL/SQL program to find the factorial of a given number.
set serveroutput on;

DECLARE
num number := &num;
factorial number := 1;
n number := num;
BEGIN 
    if num=0 then
        factorial := 1;
    else
        while n<>1 loop
            factorial := factorial * n;
            n := n - 1 ;
        end loop;
    end if;

    dbms_output.put_line('Factorial of '|| num ||' = '||factorial);
end;
/