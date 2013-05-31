DROP TRIGGER IF EXISTS Insert_Trigger;
DROP TRIGGER IF EXISTS Update_Trigger;
DROP TRIGGER IF EXISTS Delete_Trigger;

DELIMITER @@
 
CREATE TRIGGER Insert_Trigger
AFTER INSERT ON tickets 
FOR EACH ROW 
BEGIN
     DECLARE cmd text;
     DECLARE result int(10);
     SET cmd='/tmp/notify.sh';
     SET result = sys_exec(cmd);
END;
@@

CREATE TRIGGER Update_Trigger
AFTER UPDATE ON tickets 
FOR EACH ROW 
BEGIN
     DECLARE cmd text;
     DECLARE result int(10);
     SET cmd='/tmp/notify.sh';
     SET result = sys_exec(cmd);
END;
@@

CREATE TRIGGER Delete_Trigger
AFTER DELETE ON tickets 
FOR EACH ROW 
BEGIN
     DECLARE cmd text;
     DECLARE result int(10);
     SET cmd='/tmp/notify.sh';
     SET result = sys_exec(cmd);
END;
@@

DELIMITER ;
