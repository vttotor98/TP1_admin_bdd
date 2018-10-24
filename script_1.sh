#!/bin/bash

#1. connexion en tant que sysdba
#id sys
#psswd oracle
sqlplus sys/oracle as sysdba

#démarer oracle si nécessaire
startup

#2. instance
select * from v$instance;

#3. 1. nom bdd
show parameter db_name
#3. 2. nom instance
show parameter instance_name
#3. 3. taille block
show parameter db_block_size

#4. Question 4
select NAME, BLOCK_SIZE,RFILE#,FILE# from v$datafile;

#5. options installées
select * from v$option where value='TRUE';

#6.

#7 . 
select value from v$parameter where name='processes';

#8. 
select count(*) from v$fixed_table where name like 'V$%';

#9. 

shutdown abort
exit
cp /u01/app/oracle/admin/orcl/pfile/init.ora.94201816856 ./init.ora
vi ./init.ora
sqlplus sys/oracle as sysdba
startup pfile=/home/oracle/TP/TP_ADMIN_BDD/init.ora

#10.
select * from v$parameter

#11.
#fermer les instances avec shutdown immediate
INSERT INTO EMP (EMPNO,ENAME,JOB) VALUES (1,'Jean','SALESMAN');
INSERT INTO EMP (EMPNO,ENAME,JOB) VALUES (2,'Michel','SALESMAN');
INSERT INTO EMP (EMPNO,ENAME,JOB) VALUES (3,'Jacques','SALESMAN');

