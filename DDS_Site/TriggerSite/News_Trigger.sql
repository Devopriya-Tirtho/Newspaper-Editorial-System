create or replace trigger insert_trigger_news before insert on News
For each row
begin
select site_sequence_news.NEXTVAL
into :NEW.nid from dual;

end;
/