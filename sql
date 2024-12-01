CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Subject VARCHAR(50),
    Score INT
);

INSERT INTO Students (StudentID, Name, Subject, Score) VALUES
(1, 'Alice', 'Math', 85),
(2, 'Bob', 'Math', 78),
(3, 'Charlie', 'Science', 92),
(4, 'David', 'Math', 88),
(5, 'Eve', 'Science', 76);

SELECT Name, Score 
FROM Students 
ORDER BY Score DESC;

SELECT DISTINCT Subject 
FROM Students;

SELECT Subject, 
       SUM(Score) AS TotalScore, 
       AVG(Score) AS AverageScore 
FROM Students 
GROUP BY Subject;

SELECT Subject, 
       MAX(Score) AS HighestScore 
FROM Students 
GROUP BY Subject;

SELECT Name, Subject, Score 
FROM Students 
WHERE Score > (SELECT AVG(Score) 
               FROM Students 
               WHERE Students.Subject = Subject);
