create trigger updatemp1
after insert on emp1
for each row
begin
    update oldemp set rollno=rollno-1 where id=:new.id;	
end;
/	