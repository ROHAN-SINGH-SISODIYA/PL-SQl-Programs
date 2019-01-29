set serveroutput on
set verify off

    declare
	   
	        ctr number(4):=0;
			deid number(4);
			dename varchar(10);
			dlocation varchar(10);
	        deptname varchar(3);

    cursor cur_emp1 is
    select eid,ename,dptname from emp5 where dptname='me';
	no_department_found exception;
  	
	begin
	        open cur_emp1;
			loop
			     fetch cur_emp1 into deid,dename,deptname;
				 exit when cur_emp1%notfound;
				 ctr:=ctr+1;
				 insert into newemp5 values(deid,dename,deptname);
				 dbms_output.put_line(ctr ||'inserted');
			end loop;

            dbms_output.put_line('total number-'||ctr);
			
            if cur_emp1%rowcount=0 then
                close cur_emp1;
                raise No_Department_Found;
            end if;
           
            close cur_emp1;
            
            exception
                    when No_Department_Found then
                    dbms_output.put_line('no record found');
            end;
            /
set verify on
set serveroutput off			