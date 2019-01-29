create or replace trigger hr_logon
after logon on schema
begin
   insert into hr_event values(
   ora_sysevent,
   sysdate,
   to_char(sysdate,'hh24:mi:ss'),
   null,
   null,
   );
   commit;
   end;
   /