set serveroutput on
declare
      cursor cur_reb is
	  select ename,location from emp5 where eid<10;
	  var_emp cur_reb%rowtype;
	  
begin
      open cur_reb;
	
      fetch cur_reb into var_emp;
      dbms_output.put_line(var_emp.ename);
      dbms_output.put_line(var_emp.location);
	
      close cur_reb;
end;
/      	  
	  