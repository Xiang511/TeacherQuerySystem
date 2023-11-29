select * from DA
select * from Department
select * from Expertise
select * from PE
select * from Professor

/*查詢所有系助相關資訊*/
select DA.DAName ,DA.Room,Da.Ext,DA.[E-mail]   
from   DA
where  DA.DepartmentID between '0' and '5'

/*查詢專長代號為G007的名稱及老師姓名*/
select Expertise.ExpertiseID,Expertise.ExpertiseName,Professor.ProfessorName 
from Expertise,PE,Professor
where PE.ProfessorID=Professor.ProfessorID and PE.ExpertiseID = Expertise.ExpertiseID  and Expertise.ExpertiseID = 'G007'

/*查詢資工系有哪些老師*/
select Professor.ProfessorName,Department.DepartmentName  from Professor,Department
where Department.DepartmentID= Professor.DepartmentID and Professor.DepartmentID='1'

/*查詢老師專長*/
select Expertise.ExpertiseID,Expertise.ExpertiseName,Professor.ProfessorName from Expertise,PE,Professor
where PE.ProfessorID=Professor.ProfessorID and PE.ExpertiseID = Expertise.ExpertiseID  and Professor.ProfessorName= '鄭志宏' 

/*使用E-MAIL查詢老師姓名和學系*/
select Professor.ProfessorName,Department.DepartmentName from Professor,Department
where Professor.[E-mail]='yangch@isu.edu.tw' and Department.DepartmentID= Professor.DepartmentID

/*進階SQL*/

/*查詢三個系所有的老師*/
(select Professor.ProfessorName,Department.DepartmentName  from Professor,Department
where Department.DepartmentID= Professor.DepartmentID and Professor.DepartmentID='1')
union all
(select Professor.ProfessorName,Department.DepartmentName  from Professor,Department
where Department.DepartmentID= Professor.DepartmentID and Professor.DepartmentID='2')
union all
(select Professor.ProfessorName,Department.DepartmentName  from Professor,Department
where Department.DepartmentID= Professor.DepartmentID and Professor.DepartmentID='3')

/*查詢系助ID編號5,若有則為True(印出所有系助名單)*/
SELECT DA.DAName
FROM DA
WHERE   EXISTS
(SELECT DA.DepartmentID FROM DA
WHERE  DA.DepartmentID='5');


--  專長是機器學習的教授;

(SELECT Professor.ProfessorName
FROM Professor
INNER JOIN PE
ON PE.ExpertiseID = 'E006' and PE.ProfessorID= Professor.ProfessorID)

-- 資工系全部的 姓名 分機 辦公室
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

--所有教授的專長

SELECT ProfessorName, Expertise.ExpertiseName FROM Professor
INNER JOIN
PE
ON Professor.ProfessorID = PE.ProfessorID
INNER JOIN
Expertise
ON Expertise.ExpertiseID = PE.ExpertiseID