-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-04-12 06:09:56.567

-- tables
-- Table: Animal
CREATE TABLE Animal (
    animal_id varchar(50)  NOT NULL DEFAULT null,
    animal_type varchar(50)  NOT NULL,
    owner_name varchar(25)  NOT NULL DEFAULT null,
    phn_number int  NOT NULL DEFAULT null,
    age int  NOT NULL DEFAULT null,
    Address varchar(30)  NOT NULL DEFAULT null,
    CONSTRAINT patient_pk PRIMARY KEY (animal_id)
);

-- Table: Appointment
CREATE TABLE Appointment (
    Appointment_ID int  NOT NULL DEFAULT null,
    Appointment_Date int  NOT NULL DEFAULT null,
    Animal_animal_id varchar(50)  NOT NULL,
    Doctor_Doctor_Id varchar(50)  NOT NULL DEFAULT null,
    Transactions_Transaction_id varchar(50)  NOT NULL DEFAULT null,
    CONSTRAINT Appointment_pk PRIMARY KEY (Appointment_ID)
);

-- Table: Bills
CREATE TABLE Bills (
    Bill_id varchar(50)  NOT NULL DEFAULT null,
    Bill_amount int  NOT NULL DEFAULT null,
    Transactions_Transaction_id varchar(50)  NOT NULL DEFAULT null,
    CONSTRAINT Bills_pk PRIMARY KEY (Bill_id)
);

-- Table: Doctor
CREATE TABLE Doctor (
    Doctor_Id varchar(50)  NOT NULL DEFAULT null,
    Doctor_name varchar(50)  NOT NULL DEFAULT null,
    doctor_number int  NOT NULL DEFAULT null,
    Specialization varchar(50)  NOT NULL DEFAULT null,
    CONSTRAINT Doctor_pk PRIMARY KEY (Doctor_Id)
);

-- Table: Transactions
CREATE TABLE Transactions (
    Transaction_id varchar(50)  NOT NULL DEFAULT null,
    Bill_id varchar(50)  NOT NULL DEFAULT null,
    Treatement_treatment_id varchar(50)  NOT NULL,
    CONSTRAINT Transactions_pk PRIMARY KEY (Transaction_id)
);

-- Table: Treatement
CREATE TABLE Treatement (
    treatment_id varchar(50)  NOT NULL,
    treatement_name varchar(255)  NOT NULL,
    CONSTRAINT Treatement_pk PRIMARY KEY (treatment_id)
);

-- foreign keys
-- Reference: Appointment_Animal (table: Appointment)
ALTER TABLE Appointment ADD CONSTRAINT Appointment_Animal FOREIGN KEY Appointment_Animal (Animal_animal_id)
    REFERENCES Animal (animal_id);

-- Reference: Appointment_Doctor (table: Appointment)
ALTER TABLE Appointment ADD CONSTRAINT Appointment_Doctor FOREIGN KEY Appointment_Doctor (Doctor_Doctor_Id)
    REFERENCES Doctor (Doctor_Id);

-- Reference: Appointment_Transactions (table: Appointment)
ALTER TABLE Appointment ADD CONSTRAINT Appointment_Transactions FOREIGN KEY Appointment_Transactions (Transactions_Transaction_id)
    REFERENCES Transactions (Transaction_id);

-- Reference: Bills_Transactions (table: Bills)
ALTER TABLE Bills ADD CONSTRAINT Bills_Transactions FOREIGN KEY Bills_Transactions (Transactions_Transaction_id)
    REFERENCES Transactions (Transaction_id);

-- Reference: Transactions_Treatement (table: Transactions)
ALTER TABLE Transactions ADD CONSTRAINT Transactions_Treatement FOREIGN KEY Transactions_Treatement (Treatement_treatment_id)
    REFERENCES Treatement (treatment_id);

-- End of file.

