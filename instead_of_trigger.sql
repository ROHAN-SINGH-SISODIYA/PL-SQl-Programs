create or replace trigger insteadof
instead of insert on vw_rebel
for each row
begin
   insert into trainer(full_name) values(:new.full_name);
   insert into subject(subject_name) values(:new.subject_name);
end;
/   