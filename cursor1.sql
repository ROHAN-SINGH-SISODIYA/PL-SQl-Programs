set serveroutput on
set verify off
   
     declare 
	      ctr number(2):=0;
		  deid number(2);
		  dename varchar(10);
		  dlocation varchar(20);
		  
     cursor cur_emp is 
          select eid,ename,location from cursor1 where dptname='CSE';
          no_department_found exception;
   
     begin
      
          open cur_emp;
         
          loop
               fetch cur_emp into deid,dename,dlocation;
               exit when cur_emp%notfound;
               ctr:=ctr+1;
               insert into cursor01 values(deid,dename,dlocation);
               dbms_output.put_line(ctr||' inserted values');
          end loop;

         
          
          if cur_emp%rowcount=0 then
            close cur_emp;
            raise no_department_found;
          end if;
          
          close cur_emp;
     
    exception
           
          when no_department_found then 
          dbms_output.put_line('n record found');
		  
end;
/
set verify on
set serveroutput off		  
		  
		  
			   