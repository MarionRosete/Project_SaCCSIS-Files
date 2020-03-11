# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases 11.1.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          SaCC ERD.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2020-03-11 16:52                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "tbl_curriculum"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_curriculum` (
    `currcode` INTEGER(8) NOT NULL AUTO_INCREMENT,
    `description` VARCHAR(50) NOT NULL,
    CONSTRAINT `PK_tbl_curriculum` PRIMARY KEY (`currcode`)
);

# ---------------------------------------------------------------------- #
# Add table "tbl_department"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_department` (
    `deptID` INTEGER(8) NOT NULL AUTO_INCREMENT,
    `deptname` VARCHAR(50) NOT NULL,
    `currcode` INTEGER(8) NOT NULL,
    `chairman` VARCHAR(40) NOT NULL,
    `dean` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_tbl_department` PRIMARY KEY (`deptID`)
);

# ---------------------------------------------------------------------- #
# Add table "tbl_course"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_course` (
    `courseID` INTEGER(8) NOT NULL AUTO_INCREMENT,
    `coursetitle` VARCHAR(40) NOT NULL,
    `deptID` INTEGER(8) NOT NULL,
    CONSTRAINT `PK_tbl_course` PRIMARY KEY (`courseID`)
);

# ---------------------------------------------------------------------- #
# Add table "tbl_class"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_class` (
    `classID` INTEGER(8) NOT NULL AUTO_INCREMENT,
    `schoolyr` DATE NOT NULL,
    `semester` INTEGER(2) NOT NULL,
    `courseID` INTEGER(8) NOT NULL,
    `block` INTEGER(8) NOT NULL,
    CONSTRAINT `PK_tbl_class` PRIMARY KEY (`classID`)
);

# ---------------------------------------------------------------------- #
# Add table "tbl_subject"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_subject` (
    `subjectID` INTEGER(8) NOT NULL AUTO_INCREMENT,
    `subjtitle` VARCHAR(40) NOT NULL,
    `subjectcode` VARCHAR(40) NOT NULL,
    `subjunit` DECIMAL(10,2),
    CONSTRAINT `PK_tbl_subject` PRIMARY KEY (`subjectID`)
);

# ---------------------------------------------------------------------- #
# Add table "tbl_instructor"                                             #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_instructor` (
    `instructorID` INTEGER(8) NOT NULL AUTO_INCREMENT,
    `firstname` VARCHAR(40) NOT NULL,
    `midname` VARCHAR(40) NOT NULL,
    `lastname` VARCHAR(40) NOT NULL,
    `suffix` VARCHAR(40) NOT NULL,
    `birthdate` VARCHAR(40) NOT NULL,
    `degree` VARCHAR(40) NOT NULL,
    `master` VARCHAR(40),
    `PhD` VARCHAR(40),
    CONSTRAINT `PK_tbl_instructor` PRIMARY KEY (`instructorID`)
);

# ---------------------------------------------------------------------- #
# Add table "tbl_student"                                                #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_student` (
    `studentID` INTEGER(8) NOT NULL AUTO_INCREMENT,
    `firstname` VARCHAR(40) NOT NULL,
    `midname` VARCHAR(40) NOT NULL,
    `lastname` VARCHAR(40) NOT NULL,
    `suffix` VARCHAR(40),
    `birthdate` DATE NOT NULL,
    `civilstatus` VARCHAR(40) NOT NULL,
    `age` INTEGER(3) NOT NULL,
    `gender` VARCHAR(40) NOT NULL,
    `birthplace` VARCHAR(40) NOT NULL,
    `street` VARCHAR(40) NOT NULL,
    `city` VARCHAR(40) NOT NULL,
    `province` VARCHAR(40) NOT NULL,
    `guardian` VARCHAR(40) NOT NULL,
    `contactNum` VARCHAR(40) NOT NULL,
    CONSTRAINT `PK_tbl_student` PRIMARY KEY (`studentID`)
);

# ---------------------------------------------------------------------- #
# Add table "tbl_acadbg"                                                 #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_acadbg` (
    `acadbgID` INTEGER(8) NOT NULL AUTO_INCREMENT,
    `intSchlName` VARCHAR(40) NOT NULL,
    `intSchlAddress` VARCHAR(40) NOT NULL,
    `intSchlYrGrad` DATE NOT NULL,
    `jrSchlName` VARCHAR(40) NOT NULL,
    `jrSchlAddress` VARCHAR(40) NOT NULL,
    `jrSchlYrGrad` DATE NOT NULL,
    `srSchlName` VARCHAR(40),
    `srSchlAdd` VARCHAR(40),
    `srSchlYrGrad` DATE,
    `tertiarySchlName` VARCHAR(40),
    `tertiaryLastAttended` DATE,
    `tertiaryGraduated` BOOL,
    `tertiaryCourse` VARCHAR(40),
    `tertGradYr` DATE,
    `LRN` INTEGER(20) NOT NULL,
    `studentID` INTEGER(8) NOT NULL,
    CONSTRAINT `PK_tbl_acadbg` PRIMARY KEY (`acadbgID`)
);

# ---------------------------------------------------------------------- #
# Add table "tbl_ClassSubject"                                           #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_ClassSubject` (
    `subclassID` INTEGER(8) NOT NULL AUTO_INCREMENT,
    `subjectID` INTEGER(8) NOT NULL,
    `instructorID` INTEGER(8) NOT NULL,
    `classID` INTEGER(8) NOT NULL,
    `studentID` INTEGER(8) NOT NULL,
    CONSTRAINT `PK_tbl_ClassSubject` PRIMARY KEY (`subclassID`)
);

# ---------------------------------------------------------------------- #
# Add table "tbl_subjSched"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_subjSched` (
    `schedID` INTEGER(8) NOT NULL,
    `days` VARCHAR(40) NOT NULL,
    `time` VARCHAR(40) NOT NULL,
    `building` INTEGER(100) NOT NULL,
    `room` INTEGER(100) NOT NULL,
    `subclassID` INTEGER(8) NOT NULL,
    CONSTRAINT `PK_tbl_subjSched` PRIMARY KEY (`schedID`)
);

# ---------------------------------------------------------------------- #
# Add table "tbl_StudentSubject"                                         #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_StudentSubject` (
    `StudSub` INTEGER(8) NOT NULL AUTO_INCREMENT,
    `subclassID` INTEGER(8) NOT NULL,
    CONSTRAINT `PK_tbl_StudentSubject` PRIMARY KEY (`StudSub`)
);

# ---------------------------------------------------------------------- #
# Add table "tbl_studGrade"                                              #
# ---------------------------------------------------------------------- #

CREATE TABLE `tbl_studGrade` (
    `gradeID` INTEGER(8) NOT NULL AUTO_INCREMENT,
    `grade` DECIMAL(10,2) NOT NULL,
    `StudSub` INTEGER(8) NOT NULL,
    CONSTRAINT `PK_tbl_studGrade` PRIMARY KEY (`gradeID`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `tbl_department` ADD CONSTRAINT `tbl_curriculum_tbl_department` 
    FOREIGN KEY (`currcode`) REFERENCES `tbl_curriculum` (`currcode`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `tbl_course` ADD CONSTRAINT `tbl_department_tbl_course` 
    FOREIGN KEY (`deptID`) REFERENCES `tbl_department` (`deptID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `tbl_class` ADD CONSTRAINT `tbl_course_tbl_class` 
    FOREIGN KEY (`courseID`) REFERENCES `tbl_course` (`courseID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `tbl_ClassSubject` ADD CONSTRAINT `tbl_subject_tbl_ClassSubject` 
    FOREIGN KEY (`subjectID`) REFERENCES `tbl_subject` (`subjectID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `tbl_ClassSubject` ADD CONSTRAINT `tbl_instructor_tbl_ClassSubject` 
    FOREIGN KEY (`instructorID`) REFERENCES `tbl_instructor` (`instructorID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `tbl_ClassSubject` ADD CONSTRAINT `tbl_class_tbl_ClassSubject` 
    FOREIGN KEY (`classID`) REFERENCES `tbl_class` (`classID`);

ALTER TABLE `tbl_ClassSubject` ADD CONSTRAINT `tbl_student_tbl_ClassSubject` 
    FOREIGN KEY (`studentID`) REFERENCES `tbl_student` (`studentID`);

ALTER TABLE `tbl_subjSched` ADD CONSTRAINT `tbl_ClassSubject_tbl_subjSched` 
    FOREIGN KEY (`subclassID`) REFERENCES `tbl_ClassSubject` (`subclassID`);

ALTER TABLE `tbl_StudentSubject` ADD CONSTRAINT `tbl_ClassSubject_tbl_StudentSubject` 
    FOREIGN KEY (`subclassID`) REFERENCES `tbl_ClassSubject` (`subclassID`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `tbl_studGrade` ADD CONSTRAINT `tbl_StudentSubject_tbl_studGrade` 
    FOREIGN KEY (`StudSub`) REFERENCES `tbl_StudentSubject` (`StudSub`) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE `tbl_acadbg` ADD CONSTRAINT `tbl_student_tbl_acadbg` 
    FOREIGN KEY (`studentID`) REFERENCES `tbl_student` (`studentID`) ON DELETE RESTRICT ON UPDATE CASCADE;
