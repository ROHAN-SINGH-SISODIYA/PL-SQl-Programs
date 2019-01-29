set serveroutput on

declare
   i number(2):=0;
   
begin
   dbms_output.put_line('this is demo for loop');
    
    loop
        exit when i>10;
        dbms_output.put_line('number is:'||i);
        i:=i+1;
    end loop;
end;
/
set serveroutput off	