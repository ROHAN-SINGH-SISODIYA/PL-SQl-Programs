create or replace package body pkg_r is

    function t_stng return varchar2 is
	  begin
	       return 'rohan';
      end t_stng;

    procedure pro_sup(f_name varchar2,l_name varchar2) is
       begin
            insert into new_sup(f_name,l_name) values(f_name,l_name);
       end	;

end pkg_r;	   