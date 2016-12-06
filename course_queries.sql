/*SELECT ProblemId, peo1.LastName as Sender,
Message as ProblemDescription,  
Peo.LastName as Executor, 
Pos.PositionName as ExecutorPosition
FROM Reports as rep
INNER JOIN People as peo on rep.RecipientId=Peo.Id
INNER JOIN Position as pos on peo.PostId=Pos.Id
INNER JOIN People as peo1 on rep.SenderId=peo1.Id
WHERE ProblemId in(1,3,5)
ORDER BY ProblemId*/


/*SELECT People.LastName as Executor, 
Position.PositionName as Postion, 
Problems.Description as Problem
FROM Reports
INNER JOIN People on Reports.RecipientId=People.Id
INNER JOIN Position on People.PostId=Position.Id
INNER JOIN Problems on Reports.ProblemId=Problems.Id
WHERE (Problems.ParentId is NULL AND Position.PositionName <> 'Tester')  
ORDER BY Executor*/

/*SELECT count(RecipientId) as TaskCount, People.LastName as 'Executor Lastname'
FROM Reports
INNER JOIN People on Reports.RecipientId=People.Id
GROUP BY People.LastName
ORDER BY TaskCount DESC*/

/*SELECT ProblemId, Problems.Description ,count(ProblemId) as Reports
FROM Reports
INNER JOIN People on Reports.SenderId=People.Id
INNER JOIN Position on People.PostId=Position.Id
INNER JOIN Problems on Reports.ProblemId=Problems.Id
WHERE (Position.PositionName='USER' AND Date between '2016-11-13 ' and '2016-11-14 ')
GROUP BY ProblemId, Problems.Description*/

--INSERT INTO People Values(23,'Dmitrii', 'Kovalenko', 5), (24,'Valerii', 'Mogila', 7), (25, 'Oscar','De La Hoya', 10)

--DELETE FROM People 
--WHERE LastName IN ('De La Hoya' , 'Mogila' , 'Kovalenko')











