INSERT INTO `USER` (`USER_ID`, `CREATED_AT`, `EMAIL`, `ENABLE`, `EXPIRED`, `FIRST_NAME`, `LAST_NAME`, `ORGANIZATION`, `PASSWORD`, `ROLE`, `USERNAME`) VALUES ('1', '2015-01-01', 'manager@gmail.com', 'Y', 'N', 'MM', 'AA', 'CollegeBoard', 'manager', 'manager', 'manager');
INSERT INTO `USER` (`USER_ID`, `CREATED_AT`, `EMAIL`, `ENABLE`, `EXPIRED`, `FIRST_NAME`, `LAST_NAME`, `ORGANIZATION`, `PASSWORD`, `ROLE`, `USERNAME`) VALUES ('2', '2015-10-01', 'emp1@gmail.com', 'Y', 'N', 'X', 'Y', 'CollegeBoard', 'emp1', 'employee', 'emp1');
INSERT INTO `USER` (`USER_ID`, `CREATED_AT`, `EMAIL`, `ENABLE`, `EXPIRED`, `FIRST_NAME`, `LAST_NAME`, `ORGANIZATION`, `PASSWORD`, `ROLE`, `USERNAME`) VALUES ('3', '2015-11-01', 'emp2@gmail.com', 'Y', 'N', 'S', 'K', 'CollegeBoard', 'emp2', 'employee', 'emp2');

INSERT INTO `MANAGER` (`MANAGER_ID`, `USER_ID`) VALUES ('1', '1');

INSERT INTO `EMPLOYEE` (`EMPLOYEE_ID`, `MANAGER_ID`, `USER_ID`) VALUES ('1', '1', '2');
INSERT INTO `EMPLOYEE` (`EMPLOYEE_ID`, `MANAGER_ID`, `USER_ID`) VALUES ('2', '1', '3');

INSERT INTO `PROJECT` (`PROJECT_ID`, `END_DATE`, `PROJECT_NAME`, `START_DATE`, `MANAGER_ID`) VALUES ('1', '2016-05-30', 'bsscores', '2015-05-01', '1');
INSERT INTO `PROJECT` (`PROJECT_ID`, `END_DATE`, `PROJECT_NAME`, `START_DATE`, `MANAGER_ID`) VALUES ('2', '2016-06-01', 'bsholds', '2015-03-01', '1');

INSERT INTO `EMPLOYEE_PROJECT` (`PROJECT_ID`, `EMPLOYEE_ID`) VALUES ('1', '1');
INSERT INTO `EMPLOYEE_PROJECT` (`PROJECT_ID`, `EMPLOYEE_ID`) VALUES ('1', '2');
INSERT INTO `EMPLOYEE_PROJECT` (`PROJECT_ID`, `EMPLOYEE_ID`) VALUES ('2', '1');

INSERT INTO `WEEK_SHEET` (`WEEK_SHEET_ID`, `APPROVED_IND`, `START_DATE`, `SUBMITTED_IND`, `TOTAL_HOUR`, `EMPLOYEE_ID`, `PROJECT_ID`) VALUES ('1', 'N', '2015-12-06', 'N', '40', '1', '1');

INSERT INTO `DAY_SHEET` (`DAY_SHEET_ID`, `DATE`, `HOUR`, `WEEK_SHEET_ID`) VALUES ('1', '2015-12-07', '8', '1');
INSERT INTO `DAY_SHEET` (`DAY_SHEET_ID`, `DATE`, `HOUR`, `WEEK_SHEET_ID`) VALUES ('2', '2015-12-08', '8', '1');
INSERT INTO `DAY_SHEET` (`DAY_SHEET_ID`, `DATE`, `HOUR`, `WEEK_SHEET_ID`) VALUES ('3', '2015-12-09', '8', '1');
INSERT INTO `DAY_SHEET` (`DAY_SHEET_ID`, `DATE`, `HOUR`, `WEEK_SHEET_ID`) VALUES ('4', '2015-12-10', '8', '1');
INSERT INTO `DAY_SHEET` (`DAY_SHEET_ID`, `DATE`, `HOUR`, `WEEK_SHEET_ID`) VALUES ('5', '2015-12-11', '8', '1');
