set serveroutput on

declare
    type rohan is table of emp.firstname%type index by binary_integer;
	type salary1 is table of emp.salary%type index  by binary_integer;
	
	dname rohan;
	dsalary salary1;
	r binary_integer:=0;
	
begin
    for i in (select *from emp) loop
       r:=r+1;
       dname(r):=i.firstname;
       dsalary(r):=i.salary;
    end loop;
 
    for j in 1..r loop 
       dbms_output.put_line('name:'||dname(j));
       dbms_output.put_line('salary:'||dsalary(j));
    end loop;
 end;
/
set serveroutput off 