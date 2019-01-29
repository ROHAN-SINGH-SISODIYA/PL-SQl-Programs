create trigger emp123
before update on emp1
for each  row 
    begin
	   
	    insert into oldemp values(:old.id,
		                          :old.name,
								  :old.joinday,
								  :old.rollno
								  );
	end;
    /	