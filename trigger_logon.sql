create or replace trigger hr_logon1
after logon on database
begin
 insert into logondata values
 (
    ora_sysevent,
	sysdate,
	to_char(sysdate,'h24:mi:ss'),
	null,
	null
 );
 commit;
 end;
 /