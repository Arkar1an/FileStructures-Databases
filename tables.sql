CREATE TABLE PROFESSOR
(
	P_SSN numeric(9) not null,
	P_Name varchar(20) not null,
	P_AreaCode numeric(3) not null,
	P_Number numeric(7) not null,
	P_Street varchar(30) not null,
	P_City varchar(20) not null,
	P_State char(2) not null,
	P_Zip numeric(5) not null,
	P_Sex enum('Male', 'Female') not null,
	P_Salary numeric(6) not null,
	P_Title enum('Dr.', 'Mr.', 'Ms.', 'Mrs.') not null,	
	primary key(P_SSN)
);

CREATE TABLE DEGREE
(
	D_P_SSN numeric(9) not null,
	D_Name varchar(25) not null,
	primary key(D_P_SSN, D_Name),
	foreign key(D_P_SSN) references PROFESSOR(P_SSN)
);

CREATE TABLE DEPARTMENT
(
	Dept_Number numeric(5) not null,
	Dept_Name varchar(25) not null,
	Dept_Phone numeric(10) not null,
	Dept_Location varchar(10) not null,
	Dept_Chair_Person numeric(9) not null,
	primary key(Dept_Number),
	foreign key(Dept_Chair_Person) references PROFESSOR(P_SSN)
);

CREATE TABLE COURSE
(
	C_Number varchar(10) not null,
	C_Textbook varchar(50) not null,
	C_Units tinyint not null,
	C_Title varchar(50) not null,	
	C_Dept_Number numeric(5) not null,
	primary key(C_Number),
	foreign key(C_Dept_Number) references DEPARTMENT(Dept_Number)
);

CREATE TABLE PREREQ
(
	P_Course_Number varchar(10) not null,
	P_Prereq_Number  varchar(10) not null,
	primary key(P_Course_Number, P_Prereq_Number),
	foreign key(P_Course_Number) references COURSE(C_Number),
	foreign key(P_Prereq_Number) references COURSE(C_Number)
);

CREATE TABLE SECTION
(
	S_Number numeric(5) not null,
	S_Course_Number varchar(10) not null,	
	S_Classroom varchar(10) not null,
	S_Meeting_Days char(7) not null,
	S_Start_Time varchar(10) not null,
	S_End_Time varchar(10) not null,
	S_Seats numeric(3) not null,
	S_Professor_SSN varchar(9) not null,
	primary key(S_Number, S_Course_Number),
	foreign key(S_Course_Number) references COURSE(C_Number),
	foreign key(S_Professor_SSN) references PROFESSOR(P_SSN)
);

CREATE TABLE STUDENT
(
	Stu_CWID numeric(10) not null,
	Stu_FName varchar(20) not null,
	Stu_LName varchar(20) not null,
	Stu_Address varchar(60) not null,
	Stu_Phone numeric(10) not null,
	Stu_Major numeric(5) not null,
	primary key(Stu_CWID),
	foreign key(Stu_Major) references DEPARTMENT(Dept_Number)
);

CREATE TABLE ENROLLMENT
(
	E_CWID numeric(10) not null,
	E_Course_Number varchar(10) not null,
	E_Section_Number numeric(10) not null,	
	E_Grade enum('A','A-','B+','B','B-','C+','C','C-','D+','D','D-','F') not null,
	primary key(E_Section_Number, E_CWID, E_Course_Number),
	foreign key(E_Section_Number) references SECTION(S_Course_Number),
	foreign key(E_CWID) references STUDENT(Stu_CWID),
	foreign key(E_Course_Number) references COURSE(C_Number)
);

CREATE TABLE MINOR
(
	Minor_Dept_Num numeric(5) not null,
	Minor_Stu_CWID numeric(10) not null,
	primary key(Minor_Dept_Num, Minor_Stu_CWID),
	foreign key(Minor_Stu_CWID) references STUDENT(Stu_CWID),
	foreign key(Minor_Dept_Num) references DEPARTMENT(Dept_Number)
);
