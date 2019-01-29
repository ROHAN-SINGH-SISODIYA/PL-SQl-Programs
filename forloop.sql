set serveroutput on
 
begin
    dbms_output.put_line('this is demo for loop');
	
	for i in 1..20 loop
	   dbms_output.put_line('number is:'||(i*2));
	end loop;
end;
/
set serveroutput off	
	