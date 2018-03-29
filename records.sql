/***** 3 PROFESSORS *****/
INSERT INTO PROFESSOR(P_SSN, P_Name, P_Street, P_City, P_State, P_Zip, P_AreaCode, P_Number, P_Sex, P_Title, P_Salary)
VALUES (605426187, "Logan", "1250 Bellflower Blvd", "Long Beach", "CA", 90815, 562, 5557985, 'Male', "Dr.", 121021);

INSERT INTO PROFESSOR(P_SSN, P_Name, P_Street, P_City, P_State, P_Zip, P_AreaCode, P_Number, P_Sex, P_Title, P_Salary)
VALUES (146928993, "Jessica Jones", "1250 Bellflower Blvd", "Long Beach", "CA", 90815, 562, 5557787, 'Female', "Dr.", 111111);

INSERT INTO PROFESSOR(P_SSN, P_Name, P_Street, P_City, P_State, P_Zip, P_AreaCode, P_Number, P_Sex, P_Title, P_Salary)
VALUES (113861162, "Jean Grey", "1250 Bellflower Blvd", "Long Beach", "CA", 90815, 562, 5557876, 'Female', "Dr.", 101377);

/***** PROFESSOR degrees *****/
INSERT INTO DEGREE(D_P_SSN, D_Name) /***** PROFESSOR #1 *****/
VALUES (605426187, "Ph.D Computer Science");

INSERT INTO DEGREE(D_P_SSN, D_Name)
VALUES (605426187, "M.S. Computer Science");

INSERT INTO DEGREE(D_P_SSN, D_Name)
VALUES (605426187, "B.S. Computer Science");

INSERT INTO DEGREE(D_P_SSN, D_Name) /***** PROFESSOR #2 *****/
VALUES (146928993, "Ph.D Computer Engineering");

INSERT INTO DEGREE(D_P_SSN, D_Name)
VALUES (146928993, "M.S. Computer Engineering");

INSERT INTO DEGREE(D_P_SSN, D_Name)
VALUES (146928993, "B.S. Mathematics");

INSERT INTO DEGREE(D_P_SSN, D_Name) /***** PROFESSOR #3 *****/
VALUES (113861162, "Ph.D Computer Science");

INSERT INTO DEGREE(D_P_SSN, D_Name)
VALUES (113861162, "M.S. Computer Science");

INSERT INTO DEGREE(D_P_SSN, D_Name)
VALUES (113861162, "B.S. Computer Science");

/***** 2 Departments *****/
INSERT INTO DEPARTMENT(Dept_Number, Dept_Name, Dept_Phone, Dept_Location, Dept_Chair_Person)
VALUES (99999, "Computer Science", 7145558765, "CS-600", 605426187);

INSERT INTO DEPARTMENT(Dept_Number, Dept_Name, Dept_Phone, Dept_Location, Dept_Chair_Person)
VALUES (11111, "Computer Engineering", 7145552345, "EGCP-500", 146928993);

/***** 4 Courses *****/
INSERT INTO COURSE(C_Dept_Number, C_Number, C_Title, C_Textbook, C_Units)
VALUES (99999, "CPSC-131", "Data Structures", "Introduction to Data Structures, Tenth Edition", 3);

INSERT INTO COURSE(C_Dept_Number, C_Number, C_Title, C_Textbook, C_Units)
VALUES (99999, "CPSC-311", "Technical Writing for Computer Science", "Intro to Writing: a Technical Approach", 4);

INSERT INTO COURSE(C_Dept_Number, C_Number, C_Title, C_Textbook, C_Units)
VALUES (11111, "EGCP-280", "Microprocessors", "Microprocessors: A Practical Guide", 3);

INSERT INTO COURSE(C_Dept_Number, C_Number, C_Title, C_Textbook, C_Units)
VALUES (11111, "EGCP-170", "Fundamentals of Computer Engineering", "Computer Engineering Fundamentals, Third Edition", 4);


/***** 5 Comptuer Programming Sections *****/
INSERT INTO SECTION(S_Number, S_Course_Number, S_Professor_SSN, S_Classroom, S_Meeting_Days, S_Start_Time, S_End_Time, S_Seats)
VALUES (74937, "CPSC-131", 605426187, "CS-104", "TTH", "10:30am", "11:45am", 30);

INSERT INTO SECTION(S_Number, S_Course_Number, S_Professor_SSN, S_Classroom, S_Meeting_Days, S_Start_Time, S_End_Time, S_Seats)
VALUES (23802, "CPSC-131", 605426187, "CS-200", "TTH", "1:30pm", "2:45pm", 30);

INSERT INTO SECTION(S_Number, S_Course_Number, S_Professor_SSN, S_Classroom, S_Meeting_Days, S_Start_Time, S_End_Time, S_Seats)
VALUES (85390, "CPSC-311", 605426187, "CS-201", "MW", "10:30am", "11:45am", 30);

INSERT INTO SECTION(S_Number, S_Course_Number, S_Professor_SSN, S_Classroom, S_Meeting_Days, S_Start_Time, S_End_Time, S_Seats)
VALUES (65487, "CPSC-311", 113861162, "CS-100", "TH", "10:30am", "11:45am", 45);

INSERT INTO SECTION(S_Number, S_Course_Number, S_Professor_SSN, S_Classroom, S_Meeting_Days, S_Start_Time, S_End_Time, S_Seats)
VALUES (71157, "CPSC-311", 113861162, "CS-235", "T", "10:30am", "11:45am", 30);


/***** 3 Engineering Sections *****/
INSERT INTO SECTION(S_Number, S_Course_Number, S_Professor_SSN, S_Classroom, S_Meeting_Days, S_Start_Time, S_End_Time, S_Seats)
VALUES (15853, "EGCP-280", 146928993, "CS-205", "TH", "10:30am", "11:45am", 45);

INSERT INTO SECTION(S_Number, S_Course_Number, S_Professor_SSN, S_Classroom, S_Meeting_Days, S_Start_Time, S_End_Time, S_Seats)
VALUES (96241, "EGCP-170", 146928993, "CS-110", "TTH", "10:30am", "11:45am", 30);

INSERT INTO SECTION(S_Number, S_Course_Number, S_Professor_SSN, S_Classroom, S_Meeting_Days, S_Start_Time, S_End_Time, S_Seats)
VALUES (98723, "EGCP-170", 146928993, "CS-105", "TTH", "10:30am", "11:45am", 30);


/***** 10 Students *****/
INSERT INTO STUDENT(Stu_CWID, Stu_FName, Stu_LName, Stu_Address, Stu_Phone, Stu_Major)
VALUES (8911991122, "Bruce", "Banner", "123 Nutwood Ave. Fullerton, CA 92831", 7145551234, 98765);

INSERT INTO STUDENT(Stu_CWID, Stu_FName, Stu_LName, Stu_Address, Stu_Phone, Stu_Major)
VALUES (8911451245, "Peter", "Parker", "456 Nutwood Ave. Fullerton, CA 92831", 7145552354, 98765);

INSERT INTO STUDENT(Stu_CWID, Stu_FName, Stu_LName, Stu_Address, Stu_Phone, Stu_Major)
VALUES (1212121212, "Steve", "Rogers", "123 Nutwood Ave. Fullerton, CA 92831", 7145553456, 98765);

INSERT INTO STUDENT(Stu_CWID, Stu_FName, Stu_LName, Stu_Address, Stu_Phone, Stu_Major)
VALUES (3434343434, "Stephen", "Strange", "456 Nutwood Ave. Fullerton, CA 92831", 71455554567, 98765);

INSERT INTO STUDENT(Stu_CWID, Stu_FName, Stu_LName, Stu_Address, Stu_Phone, Stu_Major)
VALUES (5656565656, "Matt", "Murdock", "456 Nutwood Ave. Fullerton, CA 92831", 7145555678, 98765);

INSERT INTO STUDENT(Stu_CWID, Stu_FName, Stu_LName, Stu_Address, Stu_Phone, Stu_Major)
VALUES (7878787878, "Luke", "Cage", "123 Fullerton Blvd Fullerton, CA 92831", 7145556789, 98765);

INSERT INTO STUDENT(Stu_CWID, Stu_FName, Stu_LName, Stu_Address, Stu_Phone, Stu_Major)
VALUES (9090909090, "Charles", "Xavier", "123 Fullerton Blvd Fullerton, CA 92831", 7145557890, 98765);

INSERT INTO STUDENT(Stu_CWID, Stu_FName, Stu_LName, Stu_Address, Stu_Phone, Stu_Major)
VALUES (1313131313, "Erik", "Lensher", "789 Fullerton Blvd Fullerton, CA 92831", 7145558901, 98765);

INSERT INTO STUDENT(Stu_CWID, Stu_FName, Stu_LName, Stu_Address, Stu_Phone, Stu_Major)
VALUES (2424242424, "Remy", "LeBeau", "789 Fullerton Blvd Fullerton, CA 92831", 7145559012, 98765);

INSERT INTO STUDENT(Stu_CWID, Stu_FName, Stu_LName, Stu_Address, Stu_Phone, Stu_Major)
VALUES (3535353535, "Stan", "Lee", "456 Fullerton Blvd Fullerton, CA 92831", 7145550123, 98765);

/***** 30 Enrollments *****/
INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (8911991122, 74937, "CPSC-131", 'A');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (8911991122, 65487, "CPSC-311", 'D');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (8911991122, 15853, "EGCP-280", 'C-');
/***** *****/
INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (8911451245, 23802, "CPSC-131", 'A');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (8911451245, 85390, "CPSC-311", 'B');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (8911451245, 15853, "EGCP-280", 'C+');
/***** *****/
INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (1212121212, 23802, "CPSC-131", 'D');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (1212121212, 71157, "CPSC-311", 'B');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (1212121212, 15853, "EGCP-280", 'C-');
/***** *****/
INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (3434343434, 23802, "CPSC-131", 'A-');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (3434343434, 85390, "CPSC-311", 'B');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (3434343434, 98723, "EGCP-170", 'C');
/***** *****/
INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (5656565656, 74937, "CPSC-131", 'A-');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (5656565656, 65487, "CPSC-311", 'B-');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (5656565656, 15853, "EGCP-280", 'C');
/***** *****/
INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (7878787878, 74937, "CPSC-131", 'A');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (7878787878, 65487, "CPSC-311", 'B-');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (7878787878, 96241, "EGCP-170", 'C+');
/***** *****/
INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (9090909090, 23802, "CPSC-131", 'D-');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (9090909090, 71157, "CPSC-311", 'B');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (9090909090, 98723, "EGCP-170", 'C');
/***** *****/
INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (1313131313, 23802, "CPSC-131", 'A-');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (1313131313, 71157, "CPSC-311", 'B-');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (1313131313, 98723, "EGCP-170", 'C-');
/***** *****/
INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (2424242424, 23802, "CPSC-131", 'F');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (2424242424, 71157, "CPSC-311", 'B+');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (2424242424, 96241, "EGCP-170", 'C');
/***** *****/
INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (3535353535, 74937, "CPSC-131", 'A-');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (3535353535, 65487, "CPSC-311", 'B-');

INSERT INTO ENROLLMENT(E_CWID, E_Section_Number, E_Course_Number, E_Grade)
VALUES (3535353535, 98723, "EGCP-170", 'C+');
