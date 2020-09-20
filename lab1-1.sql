select * from 1lab.teacher;
Select * from 1lab.students where speciality= "ЭВМ";
select teacher_id,room_number from 1lab.teachers_subjects_in_groups
 where subject_id="18П";
 
 
 select subjects.subject_id,subjects.subject_name
 from 1lab.subjects
 join 1lab.teachers_subjects_in_groups 
 on teachers_subjects_in_groups.subject_id=subjects.subject_id
 join teacher 
 on teacher.teacher_id=teachers_subjects_in_groups.teacher_id
 where  second_name="Костин";
 
 
 
 select group_id
 from 1lab.teachers_subjects_in_groups 
 join teacher 
 on teacher.teacher_id=teachers_subjects_in_groups.teacher_id
 where  second_name="Фролов";
 
 select * from subjects  
 join teachers_subjects_in_groups 
 on teachers_subjects_in_groups.subject_id=subjects.subject_id
 join teacher
 on teacher.teacher_id=teachers_subjects_in_groups.teacher_id
 where subjects.speciality="АСОИ";
 
 select * from teacher
 join teachers_subjects_in_groups 
 on teachers_subjects_in_groups.teacher_id=teacher.teacher_id
 join subjects
 on subjects.subject_id=teachers_subjects_in_groups.subject_id
 where subjects.speciality="АСОИ";
 
 select teacher.second_name from teacher
 join  teachers_subjects_in_groups
 on teachers_subjects_in_groups.teacher_id=teacher.teacher_id
 where teachers_subjects_in_groups.room_number=210;
 
 select subjects.subject_name,students.group_name from subjects
 join  teachers_subjects_in_groups
 on teachers_subjects_in_groups.subject_id=subjects.subject_id
 join students
 on students.group_id=teachers_subjects_in_groups.group_id
 where teachers_subjects_in_groups.room_number>100 
 and teachers_subjects_in_groups.room_number<200;
 
 
 
 select sum(students.students_number) from students 
 where speciality="ЭВМ";
 
 select teacher.teacher_id from teacher
 join teachers_subjects_in_groups
 on teachers_subjects_in_groups.teacher_id=teacher.teacher_id 
 join students
 on students.group_id=teachers_subjects_in_groups.group_id
 where students.speciality="ЭВМ";
 
 select  subjects.* from subjects
 join teachers_subjects_in_groups
 on teachers_subjects_in_groups.subject_id=subjects.subject_id
 where teachers_subjects_in_groups.subject_id not in 
 (
 select subject_id from teachers_subjects_in_groups
 where teachers_subjects_in_groups.teacher_id="221Л"
 );  
  
 select distinct subjects.* from subjects
 join teachers_subjects_in_groups
 on teachers_subjects_in_groups.subject_id=subjects.subject_id
 join students
 on students.group_id=teachers_subjects_in_groups.group_id
 where subjects.subject_id not in
 (
 select teachers_subjects_in_groups.subject_id 
 from teachers_subjects_in_groups
 join students
 on students.group_id=teachers_subjects_in_groups.group_id
 where students.group_name="М-6"
 );
 
 
 select * from teacher
 join teachers_subjects_in_groups
 on teachers_subjects_in_groups.teacher_id=teacher.teacher_id
 join students
 on  students.group_id=teachers_subjects_in_groups.group_id
  where teacher.degree="Доцент" 
 and students.group_id IN ('3Г', '8Г');

SELECT 
teachers_subjects_in_groups.teacher_id,
teachers_subjects_in_groups.group_id,
teachers_subjects_in_groups.subject_id
FROM teachers_subjects_in_groups
JOIN teacher
  ON teacher.teacher_id = teachers_subjects_in_groups.teacher_id
WHERE teacher.speciality LIKE '%АСОИ%' 
AND teacher.cafedra = 'ЭВМ';

select students.group_id from students
join teachers_subjects_in_groups
on teachers_subjects_in_groups.group_id=students.group_id
join teacher 
on teacher.teacher_id=teachers_subjects_in_groups.teacher_id
where teacher.speciality like students.speciality;
 
select teacher.teacher_id from teacher
join teachers_subjects_in_groups
on teachers_subjects_in_groups.teacher_id=teacher.teacher_id
join students
on students.group_id=teachers_subjects_in_groups.group_id
join subjects
on subjects.subject_id=teachers_subjects_in_groups.subject_id
where students.speciality=teacher.speciality 
and teacher.cafedra="ЭВМ";

select distinct students.speciality from students
join teachers_subjects_in_groups
on teachers_subjects_in_groups.group_id=students.group_id
join teacher
on teacher.teacher_id=teachers_subjects_in_groups.teacher_id
where teacher.cafedra="АСУ";

select subjects.subject_id from subjects
join teachers_subjects_in_groups
on teachers_subjects_in_groups.subject_id=subjects.subject_id
join students
on students.group_id=teachers_subjects_in_groups.group_id
where students.group_name="АС-8";

select distinct students.group_id,subjects.subject_name from students
join teachers_subjects_in_groups
on teachers_subjects_in_groups.group_id=students.group_id
join subjects 
on subjects.subject_id=teachers_subjects_in_groups.subject_id
where subjects.subject_id in 
(
select distinct subjects.subject_id from subjects
join teachers_subjects_in_groups
on teachers_subjects_in_groups.subject_id=subjects.subject_id
join students
on students.group_id=teachers_subjects_in_groups.group_id
where students.group_name="АС-8"
);

select distinct students.group_id,subjects.subject_name from students
join teachers_subjects_in_groups
on teachers_subjects_in_groups.group_id=students.group_id
join subjects 
on subjects.subject_id=teachers_subjects_in_groups.subject_id
where not subjects.subject_id in 
(
select distinct subjects.subject_id from subjects
join teachers_subjects_in_groups
on teachers_subjects_in_groups.subject_id=subjects.subject_id
join students
on students.group_id=teachers_subjects_in_groups.group_id
where students.group_name="АС-8"
);

select distinct students.group_id from students
join teachers_subjects_in_groups 
on teachers_subjects_in_groups.group_id=students.group_id
where not teachers_subjects_in_groups.teacher_id IN 
(
select subjects.subject_id from subjects
join teachers_subjects_in_groups
on teachers_subjects_in_groups.subject_id=subjects.subject_id
where teachers_subjects_in_groups.teacher_id="430Л"
);

select teachers_subjects_in_groups.teacher_id
from teachers_subjects_in_groups
join students
on students.group_id=teachers_subjects_in_groups.group_id
where students.group_name="Э-15" 
and teachers_subjects_in_groups.teacher_id
not in 
(
select teachers_subjects_in_groups.teacher_id 
from teachers_subjects_in_groups
where teachers_subjects_in_groups.subject_id="12П"
);




