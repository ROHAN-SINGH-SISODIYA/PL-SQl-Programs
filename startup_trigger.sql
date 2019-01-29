create or replace trigger startup_audit
after startup on database
begin
  insert into startup_a values(
  ora_sysevent,
  sysdate,
  to_char(sysdate,'hh24:mm:ss')
  );
  end;
  /