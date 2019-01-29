set pagesize 5
set linesize 10
set pause on

 set pause 'press any key to continue..'
 ttitle center '[customer report]'
 btitle '[end of report]'
 

 select *from emp1;
 
 ttitle off
 btitle off
 clear column
 set pagesize 24
 set linesize 80
 set pause off