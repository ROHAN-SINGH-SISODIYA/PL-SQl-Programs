create or replace trigger hr_schema
after ddl on schema
begin
    insert into schema_a values(
	 sysdate,
	 sys_context('userenv','current_user'),
	 ora_dict_obj_type,
	 ora_dict_obj_name,
	 ora_sysevent
	 );
	 end;
	 /