set serveroutput on

begin
    dbms_output.put_line('this is demo for loop');
	
	for i in reverse 1..20 loop 
	   if mod(i,2)=0 then
	      dbms_output.put_line('modulus is:'||i);
		end if;
    end loop;
end;
/
set serveroutput off	