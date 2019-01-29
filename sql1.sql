set serveroutput on

prompt enter employee number
accept n

declare
ename varchar2(10);
edept char(3);
esalary number(38);

begin

select name,dept,salary into ename,edept,esalary from emp5 where id=&n;
dbms_output.put_line('student id:'||ename);
dbms_output.put_line('name:'||edept);
dbms_output.put_line('roll number:'||esalary);

end;
/
set serveroutput off