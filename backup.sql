create or replace trigger backup1
before insert or delete or update on r3
for each row
enable
begin
      if inserting then
	    insert into r3_backup(name) values(:new.name);
	  elsif deleting then
        delete from r3_backup where name=:old.name;
      elsif updating then
        update r3_backup set name=:new.name where name=:old.name;
      end if;
   end;
/   