set serveroutput on
 
    prompt enter employee number;
	accept id number
	
	declare
	
	   dsalary number(5);
	   tax number(10);
	   dname char(10);
	   
	begin
         
        select name,salary into dname,dsalary from emp1,emp2 where emp1.id=emp2.id and emp2.id=&id;

        if dsalary=0 or dsalary is null then
            dbms_output.put_line('No salary Found');

        elsif dsalary<=10000 then
            tax:=dsalary*0.02;
            dbms_output.put_line('name:'||dname||'salary:'||dsalary||',tax:'||tax);
  
        else
            tax:=dsalary*0.04;
            dbms_output.put_line('name:'||dname||'salary:'||dsalary||',tax'||tax);
            
        end if;
	    update emp_name set t_tax=tax where eid=&id;
		
    exception
        when no_data_found then
        dbms_output.put_line('emp name:'||&id||' is valid...');
end;
/
set serveroutput off		