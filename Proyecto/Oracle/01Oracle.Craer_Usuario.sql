alter session set "_ORACLE_SCRIPT"=true;

drop user Flix CASCADE;

CREATE USER Flix 
IDENTIFIED BY Flix
default tablespace users
temporary tablespace temp
quota unlimited on users;

GRANT create session,
      create table,
      create SYNONYM,
      create view,
      create sequence,
      create any index,
      EXECUTE any PROCEDURE
      TO Flix;