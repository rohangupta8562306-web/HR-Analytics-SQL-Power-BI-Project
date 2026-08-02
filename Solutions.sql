
HR Analytics SQL Project
Solutions.sql

---------------------------------------------------------
-- 1. Total Number of Employees
---------------------------------------------------------
SELECT COUNT(*) AS Total_Employees
FROM dbo.hr_analytics;


---------------------------------------------------------
-- 2. Employee Attrition Rate
---------------------------------------------------------
SELECT
    Attrition,
    COUNT(*) AS Employee_Count,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM dbo.hr_analytics), 2
    ) AS Percentage
FROM dbo.hr_analytics
GROUP BY Attrition;


---------------------------------------------------------
-- 3. Department-wise Employee Count
---------------------------------------------------------
SELECT
    Department,
    COUNT(*) AS Total_Employees
FROM dbo.hr_analytics
GROUP BY Department
ORDER BY Total_Employees DESC;


---------------------------------------------------------
-- 4. Average Monthly Salary by Department
---------------------------------------------------------
SELECT
    Department,
    AVG(MonthlyIncome) AS Avg_Salary
FROM dbo.hr_analytics
GROUP BY Department
ORDER BY Avg_Salary DESC;


---------------------------------------------------------
-- 5. Gender Distribution
---------------------------------------------------------
SELECT
    Gender,
    COUNT(*) AS Total_Employees
FROM dbo.hr_analytics
GROUP BY Gender;


---------------------------------------------------------
-- 6. Top 10 Highest Paid Employees
---------------------------------------------------------
SELECT TOP 10
    EmployeeNumber,
    JobRole,
    MonthlyIncome
FROM dbo.hr_analytics
ORDER BY MonthlyIncome DESC;


---------------------------------------------------------
-- 7. Employees Working Overtime
---------------------------------------------------------
SELECT
    OverTime,
    COUNT(*) AS Total_Employees
FROM dbo.hr_analytics
GROUP BY OverTime;


---------------------------------------------------------
-- 8. Department-wise Attrition
---------------------------------------------------------
SELECT
    Department,
    COUNT(*) AS Attrition_Count
FROM dbo.hr_analytics
WHERE Attrition = 'Yes'      -- Change to 1 if your data uses BIT
GROUP BY Department
ORDER BY Attrition_Count DESC;


---------------------------------------------------------
-- 9. Average Age by Job Role
---------------------------------------------------------
SELECT
    JobRole,
    AVG(Age) AS Average_Age
FROM dbo.hr_analytics
GROUP BY JobRole
ORDER BY Average_Age DESC;


---------------------------------------------------------
-- 10. Employees by Education Field
---------------------------------------------------------
SELECT
    EducationField,
    COUNT(*) AS Total_Employees
FROM dbo.hr_analytics
GROUP BY EducationField
ORDER BY Total_Employees DESC;


---------------------------------------------------------
-- 11. Attrition by Marital Status
---------------------------------------------------------
SELECT
    MaritalStatus,
    COUNT(*) AS Attrition_Count
FROM dbo.hr_analytics
WHERE Attrition = 'Yes'      -- Change to 1 if required
GROUP BY MaritalStatus
ORDER BY Attrition_Count DESC;


---------------------------------------------------------
-- 12. Average Years at Company by Department
---------------------------------------------------------
SELECT
    Department,
    AVG(YearsAtCompany) AS Avg_Years
FROM dbo.hr_analytics
GROUP BY Department
ORDER BY Avg_Years DESC;


---------------------------------------------------------
-- 13. Job Satisfaction Distribution
---------------------------------------------------------
SELECT
    JobSatisfaction,
    COUNT(*) AS Total_Employees
FROM dbo.hr_analytics
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;


---------------------------------------------------------
-- 14. Business Travel Distribution
---------------------------------------------------------
SELECT
    BusinessTravel,
    COUNT(*) AS Total_Employees
FROM dbo.hr_analytics
GROUP BY BusinessTravel
ORDER BY Total_Employees DESC;


---------------------------------------------------------
-- 15. Top 5 Job Roles with Highest Attrition
---------------------------------------------------------
SELECT TOP 5
    JobRole,
    COUNT(*) AS Attrition_Count
FROM dbo.hr_analytics
WHERE Attrition = 'Yes'      -- Change to 1 if required
GROUP BY JobRole
ORDER BY Attrition_Count DESC;
