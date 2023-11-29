select * from DA
select * from Department
select * from Expertise
select * from PE
select * from Professor

/*�d�ߩҦ��t�U������T*/
select DA.DAName ,DA.Room,Da.Ext,DA.[E-mail]   
from   DA
where  DA.DepartmentID between '0' and '5'

/*�d�߱M���N����G007���W�٤ΦѮv�m�W*/
select Expertise.ExpertiseID,Expertise.ExpertiseName,Professor.ProfessorName 
from Expertise,PE,Professor
where PE.ProfessorID=Professor.ProfessorID and PE.ExpertiseID = Expertise.ExpertiseID  and Expertise.ExpertiseID = 'G007'

/*�d�߸�u�t�����ǦѮv*/
select Professor.ProfessorName,Department.DepartmentName  from Professor,Department
where Department.DepartmentID= Professor.DepartmentID and Professor.DepartmentID='1'

/*�d�ߦѮv�M��*/
select Expertise.ExpertiseID,Expertise.ExpertiseName,Professor.ProfessorName from Expertise,PE,Professor
where PE.ProfessorID=Professor.ProfessorID and PE.ExpertiseID = Expertise.ExpertiseID  and Professor.ProfessorName= '�G�ӧ�' 

/*�ϥ�E-MAIL�d�ߦѮv�m�W�M�Ǩt*/
select Professor.ProfessorName,Department.DepartmentName from Professor,Department
where Professor.[E-mail]='yangch@isu.edu.tw' and Department.DepartmentID= Professor.DepartmentID

/*�i��SQL*/

/*�d�ߤT�Өt�Ҧ����Ѯv*/
(select Professor.ProfessorName,Department.DepartmentName  from Professor,Department
where Department.DepartmentID= Professor.DepartmentID and Professor.DepartmentID='1')
union all
(select Professor.ProfessorName,Department.DepartmentName  from Professor,Department
where Department.DepartmentID= Professor.DepartmentID and Professor.DepartmentID='2')
union all
(select Professor.ProfessorName,Department.DepartmentName  from Professor,Department
where Department.DepartmentID= Professor.DepartmentID and Professor.DepartmentID='3')

/*�d�ߨt�UID�s��5,�Y���h��True(�L�X�Ҧ��t�U�W��)*/
SELECT DA.DAName
FROM DA
WHERE   EXISTS
(SELECT DA.DepartmentID FROM DA
WHERE  DA.DepartmentID='5');


--  �M���O�����ǲߪ��б�;

(SELECT Professor.ProfessorName
FROM Professor
INNER JOIN PE
ON PE.ExpertiseID = 'E006' and PE.ProfessorID= Professor.ProfessorID)

-- ��u�t������ �m�W ���� �줽��
SELECT ProfessorName, Room, Ext FROM Professor
INNER JOIN
PE
ON Professor.ProfessorID = PE.ProfessorID
INNER JOIN
Expertise
ON Expertise.ExpertiseID = PE.ExpertiseID
WHERE Professor.DepartmentID = 1
UNION
SELECT DAName, Room, Ext FROM DA
WHERE DepartmentID = 1

--�Ҧ��бª��M��

SELECT ProfessorName, Expertise.ExpertiseName FROM Professor
INNER JOIN
PE
ON Professor.ProfessorID = PE.ProfessorID
INNER JOIN
Expertise
ON Expertise.ExpertiseID = PE.ExpertiseID