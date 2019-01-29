set severoutput on
declare
      v_name varchar(30);
	  
	  cursor p_cur(var_id varchar2) is
	  select name from emp5 where emp_id<var_id;
	  
 begin
       open p_cur(10);
       loop
            fetch p_cur into v_name;
            exit when p_cur%notfound;
            dbms_output.put_line(v_name);
       end loop;
       close p_cur;
 end;
/ 