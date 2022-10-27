use Online_Media_Rental;
CREATE TABLE movies
    (title_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(60) NOT NULL,
    description TEXT(400) NOT NULL,
    rating VARCHAR(4) CONSTRAINT OMR_Movies_Rating_Check_UPPER CHECK(UPPER(RATING) IN ('G','PG','PG13','R')),
    category VARCHAR(20) CONSTRAINT OMR_Movies_Category_Check_UPPER CHECK(UPPER(CATEGORY) IN ('DRAMA','COMEDY','ACTION','CHILD','SCIFI','DOCUMENTARY')),
    release_date DATE NOT NULL); 
ALTER TABLE Movies AUTO_INCREMENT = 1;
    
CREATE TABLE actors
    (actor_id int AUTO_INCREMENT PRIMARY KEY,
    stage_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    birth_date date NOT NULL);
ALTER TABLE actors AUTO_INCREMENT = 1001;

CREATE TABLE customers
    (customer_id INT auto_increment PRIMARY KEY,
    last_name VARCHAR(25) NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    home_phone VARCHAR(12) NOT NULL,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(30) NOT NULL,
    state VARCHAR(2) NOT NULL,
    email VARCHAR(25),
    cell_phone VARCHAR(12));
ALTER TABLE customers AUTO_INCREMENT = 101;

CREATE TABLE star_billings
    (actor_id INT NOT NULL,
    title_id INT NOT NULL,
    comments VARCHAR(40) NOT NULL,
    constraint OMR_StarBillings_PK PRIMARY KEY (actor_id, title_id),
    constraint OMR_StarBillings_ActorID_FK foreign key (actor_id) references actors(actor_id)  ON UPDATE CASCADE ON DELETE RESTRICT,
    constraint OMR_StarBillings_TitleID_FK foreign key (title_id) references movies(title_id)  ON UPDATE CASCADE ON DELETE RESTRICT);
    
CREATE TABLE media
    (media_id INT AUTO_INCREMENT primary key,
    format VARCHAR(3) NOT NULL,
    title_id INT NOT NULL,
    constraint OMR_Media_TitleID_FK foreign key (title_id) references movies(title_id) ON UPDATE CASCADE ON DELETE RESTRICT	);
ALTER TABLE media AUTO_INCREMENT = 92;      

Create Table rental_history
    (media_id INT NOT NULL,
    rental_date date,
    customer_id INT NOT NULL,
    return_date date ,
    constraint OMR_RentalHistory_PK primary key(customer_id,media_id,rental_date),
    constraint OMR_RentalHistory_MediaID_FK foreign key (media_id) references media(media_id)  ON UPDATE CASCADE ON DELETE RESTRICT,
	constraint OMR_RentalHistory_CustomerID_FK foreign key (customer_id) references customers(customer_id)  ON UPDATE CASCADE ON DELETE RESTRICT);