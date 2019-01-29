set serveroutput on
declare
     type rv_dept is record
	 (
	    f_name varchar(20),
		d_name department.dept%type
	 );
	 var1 rv_dept;
begin
     select ename,dept into var1.f_name,var1.d_name from emp5 join department using(eid)
     where eid=3;
	 dbms_output.put_line(var1.f_name||' '||var1.d_name);
end;
/	 
    	 
	 