CREATE TABLE movies
    (title_id NUMBER(10) CONSTRAINT OMR_TitleID_PK Primary key,
    title VARCHAR2(60) CONSTRAINT OMR_Movies_Title_nn NOT NULL,
    description VARCHAR2(400) CONSTRAINT OMR_Movies_Description_nn NOT NULL,
    rating VARCHAR2(4) CONSTRAINT OMR_Movies_Rating_Check_UPPER CHECK(UPPER(RATING) IN ('G','PG','PG13','R')),
    category VARCHAR2(20) CONSTRAINT OMR_Movies_Category_Check_UPPER CHECK(UPPER(CATEGORY) IN ('DRAMA','COMEDY','ACTION','CHILD','SCIFI','DOCUMENTARY')),
    release_date DATE NOT NULL);
    
CREATE TABLE actors
    (actor_id NUMBER(10) CONSTRAINT OMR_ActorID_PK PRIMARY KEY,
    stage_name VARCHAR2(40) NOT NULL,
    last_name VARCHAR2(25) NOT NULL,
    first_name VARCHAR2(25) NOT NULL,
    birth_date date NOT NULL);

CREATE TABLE customers
    (customer_id NUMBER(10) CONSTRAINT OMR_CustomerID_PK PRIMARY KEY,
    last_name VARCHAR2(25) NOT NULL,
    first_name VARCHAR2(25) NOT NULL,
    home_phone VARCHAR2(12) NOT NULL,
    address VARCHAR2(100) NOT NULL,
    city VARCHAR2(30) NOT NULL,
    state VARCHAR2(2) NOT NULL,
    email VARCHAR2(25),
    cell_phone VARCHAR2(12));

CREATE TABLE star_billings
    (actor_id NUMBER(10) NOT NULL CONSTRAINT OMR_StarBillings_ActorID_FK REFERENCES actors(actor_id),
    title_id NUMBER(10) NOT NULL CONSTRAINT OMR_StarBillings_TitleID_FK REFERENCES movies(title_id),
    comments VARCHAR2(40),
    CONSTRAINT OMR_StarBillings_PK PRIMARY KEY (actor_id, title_id));
    
CREATE TABLE media
    (media_id NUMBER (10) CONSTRAINT OMR_MediaID_PK primary key,
    format VARCHAR2 (3) NOT NULL,
    title_id NUMBER (10) NOT NULL CONSTRAINT OMR_Media_TitleID_FK REFERENCES Movies (title_id));
      
Create Table rental_history
    (media_id Number(10) NOT NULL constraint OMR_RentalHistory_MediaID_FK references Media(media_id),
    rental_date date  default(sysdate),
    customer_id Number(10) constraint OMR_RentalHistory_CustomerID_FK NOT NULL references Customers(customer_id),
    return_date date ,
    constraint OMR_RentalHistory_PK primary key(customer_id,media_id,rental_date)); 

CREATE SEQUENCE title_id_seq INCREMENT BY 1 START WITH 1 NOCYCLE;
CREATE SEQUENCE actor_id_seq INCREMENT BY 1 START WITH 1001 NOCYCLE;
CREATE SEQUENCE customer_id_seq INCREMENT BY 1 START WITH 101 NOCYCLE;
CREATE SEQUENCE media_id_seq INCREMENT BY 1 START WITH 92 NOCYCLE;