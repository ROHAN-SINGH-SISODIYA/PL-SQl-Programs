set serveroutput on

declare
    i number(2):=1;
begin
    dbms_output.put_line('this is demo for while loop');
    
    while i<=10 loop 
      dbms_output.put_line('number is:'||i);
      i:=i+1;
    end loop;
end;
/
set serveroutput off	
	