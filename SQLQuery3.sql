create database exercise
use exercise;

create table students(student_id int primary key, first_name varchar(50), last_name varchar(50), birth_date date);

create table enrollments(enrollment_id int primary key, student_id int foreign key references students(student_id), 
						 course_id int, enrollment_date date)


create table courses(course_id int primary key, course_name varchar(100), credits int check(credits Between 1 and 6))

create table professors(professor_id int primary key, first_name varchar(50), last_name varchar(50), department varchar(50) default 'General')

create table departments(department_id int primary key, department_name varchar(100) unique, budget decimal(10,2) check(budget>0))

create table course_assignments(professor_id int, course_id int, assignment_date date, primary key(professor_id, course_id))

create table class_schedules(schedule_id int primary key, professor_id int, course_id int, schedule_date date, foreign key(professor_id, course_id)
							references course_assignments(professor_id, course_id))


create table classrooms(classroom_id int primary key, building varchar(50) not null, room_number varchar(10) not null, capacity int)