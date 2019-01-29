set serveroutput on
      
	   declare 
	       rec_sal cursor2%rowtype;
		   cursor cur_emp2 is
		   select *from cursor2 where salary<1000 for update;
		   
		   begin 
		      open cur_emp2;
			  loop
			     fetch cur_emp2 into rec_sal;
				 exit when cur_emp2%notfound;
				 
				 update cursor2 set salary=salary+1 where current of cur_emp2;
				 
			  end loop;
            close cur_emp2;
 end;
/
set serveroutput off 