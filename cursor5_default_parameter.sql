set serveroutput on
declare
     v_name varchar(30);
	 v_eid number(10);
	 
	 cursor cur_reb(var_id number:=100) is
	 select first_name,emp_id from emp5 where emp_id>var_id;
	 
begin
     
	 open cur_reb;
	 loop
	    fetch cur_reb into v_name,v_eid;
		exit when cur_reb%notfound;
		dbms_output.put_line(v_name||' '||v_eid);
	 end loop;
     close cur_reb;
end;
/	 
	 
     	 
