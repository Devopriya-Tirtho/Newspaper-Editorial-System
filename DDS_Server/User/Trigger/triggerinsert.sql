
CREATE OR REPLACE TRIGGER insert_trigger  BEFORE INSERT   ON National_News 
FOR EACH ROW
BEGIN   
SELECT server_sequence.NEXTVAL 
INTO :NEW.nid  FROM Dual;   

END;
/