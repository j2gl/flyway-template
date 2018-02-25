-- --------------------------------------------------------
-- fly_master
-- --------------------------------------------------------
CREATE TABLE fly_master (
    id INT NOT NULL PRIMARY KEY, 
    name VARCHAR(50) NOT NULL, 
    description VARCHAR(50) 
) ENGINE = InnoDB;


-- --------------------------------------------------------
-- fly_detail
-- --------------------------------------------------------
CREATE TABLE fly_detail (
    id INT NOT NULL PRIMARY KEY, 
    fly_master_id INT NOT NULL,
    updated TIMESTAMP NOT NULL,
    detail VARCHAR(50) NOT NULL,
    amount DECIMAL(20,4) NOT NULL
) ENGINE = InnoDB;

ALTER TABLE fly_detail
    ADD CONSTRAINT fk_fly_detail__fly_master
    FOREIGN KEY (fly_master_id)
    REFERENCES fly_master(id);

-- Add test data
insert into fly_master values (1, 'Master 1', 'This is the description for Master 1');
insert into fly_master values (2, 'Master 2', 'This is the description for Master 2');

insert into fly_detail (id, fly_master_id, detail, amount) values (1, 1, 'detail 1', 20.99);
insert into fly_detail (id, fly_master_id, detail, amount) values (2, 1, 'detail 2', 5.15);
insert into fly_detail (id, fly_master_id, detail, amount) values (3, 1, 'detail 3', 9.00);

insert into fly_detail (id, fly_master_id, detail, amount) values (4, 2, 'detail 4', 77.77);
insert into fly_detail (id, fly_master_id, detail, amount) values (5, 2, 'detail 5', 9.55);
insert into fly_detail (id, fly_master_id, detail, amount) values (6, 2, 'detail 6', 45.05);