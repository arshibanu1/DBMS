-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-03 16:16:58.686

-- tables
-- Table: Canteen
CREATE TABLE Canteen (
    id int  NOT NULL,
    day Varchar(12)  NOT NULL,
    m_id int  NOT NULL,
    max_seats int  NOT NULL,
    Menu_id int  NOT NULL,
    CONSTRAINT Canteen_pk PRIMARY KEY  (id)
);

-- Table: Menu
CREATE TABLE Menu (
    id int  NOT NULL,
    name Varchar(30)  NOT NULL,
    taste Varchar(30)  NOT NULL,
    CONSTRAINT Menu_pk PRIMARY KEY  (id)
);

-- Table: Room
CREATE TABLE Room (
    r_num int  NOT NULL,
    description Varchar(4)  NOT NULL,
    rent_amnt int  NOT NULL,
    Staff_id int  NOT NULL,
    Canteen_id int  NOT NULL,
    CONSTRAINT Room_pk PRIMARY KEY  (r_num)
);

-- Table: Staff
CREATE TABLE Staff (
    id int  NOT NULL,
    name Varchar(30)  NOT NULL,
    role Varchar(10)  NOT NULL,
    contact int  NOT NULL,
    CONSTRAINT Staff_pk PRIMARY KEY  (id)
);

-- Table: Tenant
CREATE TABLE Tenant (
    id int  NOT NULL,
    name Varchar(30)  NOT NULL,
    age int  NOT NULL,
    r_num int  NOT NULL,
    CONSTRAINT Tenant_pk PRIMARY KEY  (id)
);

-- foreign keys
-- Reference: Canteen_Menu (table: Canteen)
ALTER TABLE Canteen ADD CONSTRAINT Canteen_Menu
    FOREIGN KEY (Menu_id)
    REFERENCES Menu (id);

-- Reference: Room_Canteen (table: Room)
ALTER TABLE Room ADD CONSTRAINT Room_Canteen
    FOREIGN KEY (Canteen_id)
    REFERENCES Canteen (id);

-- Reference: Room_Staff (table: Room)
ALTER TABLE Room ADD CONSTRAINT Room_Staff
    FOREIGN KEY (Staff_id)
    REFERENCES Staff (id);

-- Reference: Tenant_Room (table: Tenant)
ALTER TABLE Tenant ADD CONSTRAINT Tenant_Room
    FOREIGN KEY (r_num)
    REFERENCES Room (r_num);

-- End of file.

