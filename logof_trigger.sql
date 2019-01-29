create or replace trigger log_off
before logoff on schema
begin
     insert into hr_event values(
	    ora_sysevent,
		null,
		null,
		sysdate,
		to_char(sysdate,'hh24:mi:ss')
		);
		commit;
		end;
		/