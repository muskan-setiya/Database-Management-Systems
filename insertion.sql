/*  
Calculate the area of a circle for a value of radius varying from 3 to 7. Store the radius and
the corresponding values of calculated area in table areas consisting of two columns radius and
area.
*/
set serveroutput on;
DECLARE
area number := 0;
radius integer := 3; --initially 3
pi number := 3.14;

BEGIN
while radius<8 LOOP
    area := pi * power(radius,2);
    insert into CircleArea values (radius, area);
    radius := radius+1;
END LOOP;
END;
/