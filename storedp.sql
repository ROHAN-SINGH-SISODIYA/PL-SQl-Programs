create or replace procedure totalsales(cid in number,tot out number)
is
   p sales.price%type;
   t number(10,2):=0;
   
   cursor cur_sales is
   select price from sales where id=1;
   
   begin
        open cur_sales;
		loop
		    fetch cur_sales into p;
			if cur_sales%rowcount=0 then
			raise_application_error(-2020,'no data found');
			end if;
			exit when cur_sales%notfound;
			t:=t+p;
		end loop;
        close cur_sales;
		
		tot:=t;
		
		exception 
		     when others then
			    raise_application_error(-2020,'an error was encountered -'||SQLCODE||'-error-'||SQLERRM);
				
		end totalsales;
    /		
		
