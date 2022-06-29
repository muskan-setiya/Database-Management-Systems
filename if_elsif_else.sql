-- use of if elsif, else in plsql 
-- avg, total, grade ; 
set serveroutput ON;

DECLARE
subject1 NUMBER := &subject1;  -- marks in subject out of 100
subject2 NUMBER := &subject2;
subject3 NUMBER := &subject3;
subject4 NUMBER := &subject4;
total NUMBER;          -- total marks 
average NUMBER(4,2);

BEGIN
total := subject1+subject2+subject3+subject4;
average := (total)/4;

dbms_output.put_line('Total : '|| total);
dbms_output.put_line('Average : '|| average);

IF(average >= 90) THEN
   dbms_output.put_line('Grade is : A');
ELSIF(average>=80) THEN
   dbms_output.put_line('Grade is : B');
ELSIF(average>=70) THEN
   dbms_output.put_line('Grade is : C');
ELSIF(average>=60) THEN
   dbms_output.put_line('Grade is : D');
ELSIF(average>=50) THEN
   dbms_output.put_line('Grade is : E');
ELSE
   dbms_output.put_line('Grade is : F');
End IF;
End;
/