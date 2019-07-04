--Triggers

CREATE OR REPLACE TRIGGER date_check
    BEFORE INSERT OR UPDATE
    ON Animal
    FOR EACH ROW
BEGIN
    IF  :new.idade > sysdate then
            :new.idade := sysdate;
    END IF;
end;
