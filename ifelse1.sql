set serveroutput on

declare
     basic number(5):=45000;
	 
begin
     if(basic>=30000 and basic<=35000) then
        dbms_output.put_line('pay 5% tax:'||(basic*5)/100);
     elsif(basic>35000 and basic<=40000) then
        dbms_output.put_line('pay 7% tax:'||(basic*7)/100);
     elsif(basic>40000 and basic<=45000) then
        dbms_output.put_line('pay 9% tax:'||(basic*9)/100);
     else
        dbms_output.put_line('out of the tax defined');
     end if;
end;
/
set serveroutput off	 