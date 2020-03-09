# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases 11.1.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          SaCC ERD.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2020-03-09 14:53                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `tbl_department` DROP FOREIGN KEY `tbl_curriculum_tbl_department`;

ALTER TABLE `tbl_course` DROP FOREIGN KEY `tbl_department_tbl_course`;

ALTER TABLE `tbl_class` DROP FOREIGN KEY `tbl_course_tbl_class`;

ALTER TABLE `tbl_ClassSubject` DROP FOREIGN KEY `tbl_subject_tbl_ClassSubject`;

ALTER TABLE `tbl_ClassSubject` DROP FOREIGN KEY `tbl_instructor_tbl_ClassSubject`;

ALTER TABLE `tbl_ClassSubject` DROP FOREIGN KEY `tbl_class_tbl_ClassSubject`;

ALTER TABLE `tbl_ClassSubject` DROP FOREIGN KEY `tbl_student_tbl_ClassSubject`;

ALTER TABLE `tbl_subjSched` DROP FOREIGN KEY `tbl_ClassSubject_tbl_subjSched`;

ALTER TABLE `tbl_student` DROP FOREIGN KEY `tbl_acadbg_tbl_student`;

ALTER TABLE `tbl_StudentSubject` DROP FOREIGN KEY `tbl_ClassSubject_tbl_StudentSubject`;

ALTER TABLE `tbl_studGrade` DROP FOREIGN KEY `tbl_StudentSubject_tbl_studGrade`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_studGrade"                                             #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_studGrade` MODIFY `gradeID` INTEGER(8) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_studGrade` DROP PRIMARY KEY;

DROP TABLE `tbl_studGrade`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_StudentSubject"                                        #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_StudentSubject` MODIFY `StudSub` INTEGER(8) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_StudentSubject` DROP PRIMARY KEY;

DROP TABLE `tbl_StudentSubject`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_subjSched"                                             #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `tbl_subjSched` DROP PRIMARY KEY;

DROP TABLE `tbl_subjSched`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_ClassSubject"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_ClassSubject` MODIFY `subclassID` INTEGER(8) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_ClassSubject` DROP PRIMARY KEY;

DROP TABLE `tbl_ClassSubject`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_student"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_student` MODIFY `studentID` INTEGER(8) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_student` DROP PRIMARY KEY;

DROP TABLE `tbl_student`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_acadbg"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_acadbg` MODIFY `acadbgID` INTEGER(8) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_acadbg` DROP PRIMARY KEY;

DROP TABLE `tbl_acadbg`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_instructor"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_instructor` MODIFY `instructorID` INTEGER(8) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_instructor` DROP PRIMARY KEY;

DROP TABLE `tbl_instructor`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_subject"                                               #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_subject` MODIFY `subjectID` INTEGER(8) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_subject` DROP PRIMARY KEY;

DROP TABLE `tbl_subject`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_class"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_class` MODIFY `classID` INTEGER(8) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_class` DROP PRIMARY KEY;

DROP TABLE `tbl_class`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_course"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_course` MODIFY `courseID` INTEGER(8) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_course` DROP PRIMARY KEY;

DROP TABLE `tbl_course`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_department"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_department` MODIFY `deptID` INTEGER(8) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_department` DROP PRIMARY KEY;

DROP TABLE `tbl_department`;

# ---------------------------------------------------------------------- #
# Drop table "tbl_curriculum"                                            #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #

ALTER TABLE `tbl_curriculum` MODIFY `currcode` INTEGER(8) NOT NULL;

# Drop constraints #

ALTER TABLE `tbl_curriculum` DROP PRIMARY KEY;

DROP TABLE `tbl_curriculum`;
