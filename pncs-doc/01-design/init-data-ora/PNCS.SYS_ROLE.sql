SET DEFINE OFF;
Insert into SYS_ROLE
   (ID, NAME, REMARK, DATA_SCOPE, ROLE_LEVEL, 
    CREATE_TIME, PERMISSION)
 Values
   ('1', '��������Ա', '-', 'ȫ��', 1, 
    TO_DATE('12/25/2019 17:05:37', 'MM/DD/YYYY HH24:MI:SS'), 'admin');
Insert into SYS_ROLE
   (ID, NAME, REMARK, DATA_SCOPE, ROLE_LEVEL, 
    CREATE_TIME, PERMISSION)
 Values
   ('2', '��ͨ�û�', '-', '����', 2, 
    TO_DATE('12/25/2019 17:05:37', 'MM/DD/YYYY HH24:MI:SS'), 'common');
Insert into SYS_ROLE
   (ID, NAME, DATA_SCOPE, ROLE_LEVEL, CREATE_TIME, 
    PERMISSION)
 Values
   ('8b81e4816f453895016f453da17b0039', '���Խ�ɫ', 'ȫ��', 3, TO_DATE('12/27/2019 10:44:24', 'MM/DD/YYYY HH24:MI:SS'), 
    '2');
COMMIT;
