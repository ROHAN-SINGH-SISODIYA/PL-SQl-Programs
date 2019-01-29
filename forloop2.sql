set serveroutput on
begin
     dbms_output.put_line('this is demo for loop');
	 
	 for i in (select *from emp1) loop
	    if i.name='adiya' then
		  dbms_output.put_line('name:'||i.name||'rollno:'||i.rollno);
		end if;
     end loop;
end;
/
set serveroutput off	 