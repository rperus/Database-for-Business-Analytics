BEGIN TRANSACTION;
CREATE TABLE ECC_DEPARTMENT (
departmentID INTEGER PRIMARY KEY,
departmentName TEXT (30),
departmentAddress TEXT (40)
);
INSERT INTO "ECC_DEPARTMENT" VALUES(1,'Professional Services','19 Orchid Road, Exeter EX3 1GT');
INSERT INTO "ECC_DEPARTMENT" VALUES(10,'College of Business','11 King Edwart Street, Exeter, EX6 7ED');
INSERT INTO "ECC_DEPARTMENT" VALUES(20,'College of Management','13 King Edwart Street, Exeter, EX6 7ED');
INSERT INTO "ECC_DEPARTMENT" VALUES(30,'College of Accounting & Finance','51 Rosebloom Avenue, Exeter, EX1 5RT');
INSERT INTO "ECC_DEPARTMENT" VALUES(40,'College of Economics','116 Exeter High Street, Exeter, EX4 5TY');
INSERT INTO "ECC_DEPARTMENT" VALUES(70,'Roco','cerro dios hacha');
CREATE TABLE ECC_MODULE (
        moduleID     INTEGER     PRIMARY KEY,
        moduleName TEXT (30)
    );
CREATE TABLE ECC_PROGRAMME (
        programmeID INTEGER   PRIMARY KEY,
        programmeName   TEXT (40),
        programmeDepartmentID INTEGER REFERENCES ECC_DEPARTMENT(departmentID)
    );
CREATE TABLE ECC_PROGRAMME_MODULE (
        programmemoduleID     INTEGER     PRIMARY KEY AUTOINCREMENT,
        programmemoduleProgrammeID    INTEGER   REFERENCES ECC_PROGRAMME (programmeID),
        programmemoduleModuleID INTEGER  REFERENCES ECC_MODULE (moduleID),
        programmemoduleCore TEXT (10)  
    );
CREATE TABLE ECC_STUDENT (
        studentID INTEGER   PRIMARY KEY AUTOINCREMENT,
        studentFirstName   TEXT (30),
        studentLastName   TEXT (30),
        studentProgramme INTEGER REFERENCES PROGRAMME(programmeID)
    );
DELETE FROM "sqlite_sequence";
COMMIT;
