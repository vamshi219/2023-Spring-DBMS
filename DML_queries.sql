use veterinary;

insert into Doctor values('DD111','Natasha',8745632,'Orthodontics');
insert into animal values('DP010', 'dog','Clair',4782964,33,'los angeles');
select * from doctor;
select * from animal;

update animal set age=10 where animal_id='DP010';
update Doctor set doctor_number=6783434 where doctor_Id='DD111';

delete from Doctor where doctor_id='DD111';


select  a.Animal_animal_id, p.animal_type, p.owner_name
from animal p
inner join  Appointment a on a.Animal_animal_id = p.animal_id;

select  a.Doctor_Doctor_Id, d.Doctor_name
from Doctor d
inner join  Appointment a on a.Doctor_Doctor_Id= d.Doctor_Id;

Select count(animal_id),address
from animal
group by address
order by count(animal_id);

select count(appointment_id), appointment_date
from Appointment
group by appointment_date;

select animal_id from animal
union
select Animal_animal_id from Appointment;

select p.animal_type, p.owner_name, a.appointment_date
from animal p, Appointment a
where p.animal_id=a.Animal_animal_id;

select * from Transactions;