create or replace package pkg_r is
  function t_stng return varchar2;
  procedure pro_sup(f_name varchar2,l_name varchar2);
end pkg_r;