SET DEFINE OFF;
Insert into SYS_DEPT
   (ID, NAME, PID, ENABLED, CREATE_TIME)
 Values
   ('2', '研发部', '7', '1', TO_DATE('03/25/2019 09:15:32', 'MM/DD/YYYY HH24:MI:SS'));
Insert into SYS_DEPT
   (ID, NAME, PID, ENABLED, CREATE_TIME)
 Values
   ('5', '运维部', '7', '0', TO_DATE('03/25/2019 09:20:44', 'MM/DD/YYYY HH24:MI:SS'));
Insert into SYS_DEPT
   (ID, NAME, PID, ENABLED, CREATE_TIME)
 Values
   ('6', '测试部', '8', '1', TO_DATE('03/25/2019 09:52:18', 'MM/DD/YYYY HH24:MI:SS'));
Insert into SYS_DEPT
   (ID, NAME, PID, ENABLED, CREATE_TIME)
 Values
   ('11', '人事部', '8', '1', TO_DATE('03/25/2019 11:07:58', 'MM/DD/YYYY HH24:MI:SS'));
Insert into SYS_DEPT
   (ID, NAME, PID, ENABLED, CREATE_TIME)
 Values
   ('1', '总行', '0', '1', TO_DATE('03/01/2019 12:07:37', 'MM/DD/YYYY HH24:MI:SS'));
Insert into SYS_DEPT
   (ID, NAME, PID, ENABLED, CREATE_TIME)
 Values
   ('7', '内部', '1', '1', TO_DATE('03/25/2019 11:04:50', 'MM/DD/YYYY HH24:MI:SS'));
Insert into SYS_DEPT
   (ID, NAME, PID, ENABLED, CREATE_TIME)
 Values
   ('8', '外部', '1', '1', TO_DATE('03/25/2019 11:04:53', 'MM/DD/YYYY HH24:MI:SS'));
COMMIT;
