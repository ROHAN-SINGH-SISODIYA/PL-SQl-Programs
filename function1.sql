create or replace function netsalary(e_id in newemp5.eid%type) return number

is
  nets newemp5.salary%type;
  
  begin
    select salary into nets from newemp5 where eid=e_id;
	
	return(nets+500+100);
	
 end;
/ 