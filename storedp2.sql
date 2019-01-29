create or replace procedure pr_it is

var_name varchar(20):='rohan';
var_web varchar(20):='rohan.com';

begin
    dbms_output.put_line('i am '||var_name||' from '||var_web);
end pr_it;
/	