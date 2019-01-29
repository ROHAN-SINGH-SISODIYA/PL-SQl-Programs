set serveroutput on
declare
      
	  cursor cur_reb(var_id number) is
	  select emp_id,name from emp5 where emp_id>var_id;
begin
      for l_dx in cur_reb(200)
      loop
        dbms_output.put_line(l_dx.emp_id||' '||l_dx.name);
      end loop;
end;
/  	  