create or replace procedure emp_sal(dep_id number,sal_raise number)
is
begin
    update emp set salary=salary*sal_raise where id=dep_id;
end;
/	