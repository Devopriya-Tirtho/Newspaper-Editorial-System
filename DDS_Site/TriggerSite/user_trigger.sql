create or replace trigger insert_trigger_user before insert on UserTable
For each row
begin
select site_sequence_user.NEXTVAL
into :NEW.userid from dual;

end;
/