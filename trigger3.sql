create trigger iud1
after insert or update or delete on emp1
for each row
begin
    if inserting then
	    insert into emp02 values(:new.id,'inserted');
	elsif updating then  
        insert into emp02 values(:new.id,'updated');	
	elsif deleteing then
	    insert into emp02 values(:old.id,'deleted');
    end if;
end;
/	