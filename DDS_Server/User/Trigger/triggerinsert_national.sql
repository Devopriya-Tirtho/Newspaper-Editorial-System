
CREATE OR REPLACE TRIGGER insert_trigger_national  BEFORE INSERT   ON National_News 
FOR EACH ROW
BEGIN   
SELECT server_sequence_national.NEXTVAL 
INTO :NEW.nid  FROM Dual;   

END;
/