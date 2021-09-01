CREATE OR REPLACE TRIGGER insert_trigger_international  BEFORE INSERT   ON International_News 
FOR EACH ROW
BEGIN   
SELECT server_sequence_international.NEXTVAL 
INTO :NEW.nid  FROM Dual;   

END;
/