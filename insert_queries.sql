use Veterinary;

insert into Doctor values('DD543','Prathusha',9834598,'Anesthesia and analgesia');
insert into Doctor values('DD098','Dexter',682365,'Animal welfare');
insert into Doctor values('DD102','Micheal',234739,'Behavioral medicine');

insert into Appointment values(101, '21/02/2021', 'DP003', 'DD543', 'TS0023');
insert into Appointment values(102, '05/10/2021', 'DP004', 'DD098', 'TS0024');
insert into Appointment values(103, '15/09/2020', 'DP004', 'DD098', 'TS0109');
insert into Appointment values(104, '04/04/2019', 'DP001', 'DD102', 'TS0025');

insert into animal values('DP001','Dog','Vikram',84567643,30,'New jersey');
insert into animal values('DP002','Dog','Stephen',83251890,27,'New jersey');
insert into animal values('DP003','Cow','Ronald',546439335,22,'Newark');
insert into animal values('DP004','Cat','Suzy',437999217,32,'New jersey');
insert into animal values('DP005','buffalo','Rose',549278460,24,'Trenton');

insert into Bills values('DWK3389P',75,'TS0023');
insert into Bills values('DWK2679Y',200,'TS0024');
insert into Bills values('DWK8729U',170,'7367894VCY');
insert into Bills values('DWK0991P',250,'2141718DHC');
insert into Bills values('DWK7233T',100,'TS0025');
insert into Bills values('DWK6778P',100,'3968892YET');
insert into Bills values('DWK0029E',85,'TS0109');

insert into Transactions values('TS0023','DWK3389P', 'TT1001');
insert into Transactions values('TS0024','DWK2679Y', 'TT1002');
insert into Transactions values('TS0025','DWK7233T', 'TT1004');
insert into Transactions values('TS0109','DWK0029E', 'TT1005');

insert into Treatement values('TT1001','Antiparasitics');
insert into Treatement values('TT1002','Antifungals');
insert into Treatement values('TT1003','Pain Relievers');
insert into Treatement values('TT1004','Vaccination');
insert into Treatement values('TT1005','Antibiotics');

select * from Animal;
select * from Appointment;
select * from bills;
select * from Doctor;
select * from Transactions;
select * from Treatment;

