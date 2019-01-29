create or replace trigger io_update
instead of update on vw_rebel
for each row
begin
update trainer set full_name=:new.full_name where full_name=:old.full_name;
update subject set subject_name=:new.subject_name where subject_name=:old.subject_name;
end;
/