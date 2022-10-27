CREATE DATABASE IF NOT EXISTS Online_Media_Rental;

CREATE USER 'Flix' IDENTIFIED BY 'Flix';

GRANT alter, 
	  SELECT, 
      INSERT, 
      UPDATE,
      index, 
      DELETE, 
      CREATE, 
      DROP ON Online_Media_Rental. * TO 'Flix';