set severoutput on
create or replace trigger r2
before insert on r5
for each row
declare
      user1 varchar(20);
begin
      select user into user1 from dual;
      dbms_output.put_line('you inserted line mr. '||user1);
end;
/	  