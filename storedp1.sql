set serveroutput on

set feedback off
set verify off

prompt enter customer id
accept cno number

declare
tsales number;
begin

     totalsales(&cno,tsales);	 
	 dbms_output.put_line('total sales of customer '||&cno||' is '||tsales);
	 
end;
/	
set feedback on
set verify on
set serveroutput off 