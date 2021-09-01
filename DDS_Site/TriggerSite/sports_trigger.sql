create or replace trigger insert_trigger_sports before insert on Sports_News
For each row
begin
select site_sequence_sportsnews.NEXTVAL
into :NEW.nid from dual;

end;
/