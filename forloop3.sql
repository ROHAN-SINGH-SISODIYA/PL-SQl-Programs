set serveroutput on
declare 
   
      counter number:=0;
	  result1 number;
	  
begin
     loop
      counter:=counter+1;
      result1:=19*counter;
      dbms_output.put_line('19'||'x'||counter||'='||result1);	  
	 
     exit when counter>=10;
    end loop;
   end;
	/   