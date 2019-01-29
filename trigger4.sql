create or replace trigger holiday
before insert or update or delete on emp3
begin
    if(rtrim(to_char(sysdate,'day'))='monday') then	   
	   raise_application_error(-20101,'can not use table on monday');
	end if;
end;
/	