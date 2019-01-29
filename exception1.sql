set serveroutput on

   prompt enter employee number:
   accept pid number
   
   declare
       eid number;
	   dname char(10);
	   dsalary number(5);
    begin
        select  id,name,salary into eid,dname,dsalary from emp5 where id=&pid;	
		
		if(sql%rowcount>0) then
		   insert into newemp5 values(eid,dname,dsalary);
		   dbms_output.put_line('this is demo for while loop');
		   dbms_ouput.put_line('emp id:'||eid||'emp name:'||dname||'emp rollno:'||dsalary);
		end if;
    exception
         when no_data_found then
         dbms_ouput.put_line('emp number:'||&pid||'is valid.');
end;
/
set serveroutput off		 