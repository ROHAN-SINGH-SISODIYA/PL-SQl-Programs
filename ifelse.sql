set serveroutput on

declare 

     a number(2):=10;

begin
     if(a<42) then
	    dbms_output.put_line('a is less then 42');
	 else
        dbms_output.put_line('a is not less than 42');
     end if;
        dbms_output.put_line('value of a is '||a);
end;
/
set serveroutput off		