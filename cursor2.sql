set serveroutput on

   declare
        did number(2);
		dname varchar(25);
		dsalary number(5);
	
    cursor cur_emp1 is
        select id,name,salary from cursor2 order by id;


    begin 
       
         open cur_emp1;
         loop
            fetch cur_emp1 into did,dname,dsalary;
            exit when cur_emp1%notfound;
            exit when cur_emp1%rowcount>3;
            dbms_output.put_line('id-'||did||',name :'||dname||',salary:'||dsalary);	
         end loop;
         close cur_emp1;
  end;
  /
  set serveroutput off  
  
			