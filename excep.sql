set serveroutput on
	
	declare
	
	   dsalary emp_name.salary%type;
	   tax number(10);
       tax_id number(10);	   
	   counter number:=0;
    cursor ex_tax is
    select eid,salary from emp_name	where dept='cse' or dept='me' or dept='ec' or dept='ex';
    no_data_found exception;	
	
	begin
         
		open ex_tax;
        while counter<=10 loop
             fetch ex_tax into tax_id,dsalary;
             exit when ex_tax%notfound;			
              if dsalary=0 or dsalary is null then
                     dbms_output.put_line('No salary Found');
					 
					 
              elsif dsalary<=5000 then
                     tax:=dsalary*0.02;
                     dbms_output.put_line('id num:'||tax_id||'salary:'||dsalary||',tax:'||tax);
  
              else
                     tax:=dsalary*0.04;
                     dbms_output.put_line('id num:'||tax_id||'salary:'||dsalary||',tax:'||tax);
            
              end if;
        update emp_name set total_tax=tax where eid=tax_id;
		commit;
		end loop;
	    close ex_tax;
		
    exception
         when no_data_found then
         dbms_output.put_line('no data found...');
end;
/
set serveroutput off		