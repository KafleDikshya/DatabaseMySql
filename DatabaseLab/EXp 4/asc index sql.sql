create view V_SPJ as
select SNO,PNO,QTY from spj
where SPJ.JNO=J.JNO
and J.JNAME='SANJIAN';

select PNO,QTY from V_SPJ;

select PNO,QTY from V_SPJ
where SNO='S1';

2．	Create a view for the supply situation of “SANJIAN”project,
 including the attributes of  supplier code (SNO), part code (PNO) and 
 supply quantity (QTY), with two ways with SQL statement.(view name:V_SPJ) 



