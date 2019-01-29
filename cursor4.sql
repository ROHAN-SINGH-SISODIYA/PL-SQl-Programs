set serveroutput on
declare
    v_name varchar(30);
	location1 varchar(30); 
	p number:=0;
    cursor cur_name is
    select ename,location from emp5 where eid<5;
begin
    open cur_name;
    loop
	    p:=p+1;
         fetch cur_name into v_name,location1;
         dbms_output.put_line(p||'='||v_name);		
		 dbms_output.put_line(p||'='||location1);		
		 exit when cur_name%notfound;
	end loop;
	close cur_name;
end;
/
    	