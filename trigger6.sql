create or replace trigger audit_t001
before insert or delete or update on r3
for each row
enable
declare
   
      user1 varchar(30);
	  date1 varchar(30);
begin
      

      if inserting then
	      select user,to_char(sysdate,'DD/MM/YYYY') into user1,date1 from dual;
          insert into r1_audit(new_name,old_name,user_name,entry_date,operation1) values(:new.name,null,user1,date1,'insert');

      elsif deleting then
          insert into r1_audit (new_name,old_name,user_name,entry_date,operation1) values(null,:old.name,user1,date1,'delete');
     
      elsif updating then
          insert into r1_audit(new_name,old_name,user_name,entry_date,operation1) values(:new.name,:old.name,user1,date1,'update');	  
	  end if;
  end;
/  