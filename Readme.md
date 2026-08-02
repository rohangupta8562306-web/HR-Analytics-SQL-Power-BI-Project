# 📊 HR Analytics Data Analysis using SQL Server

<p align="center">
  <img src="HR-ANALYTICS%20LOGO.jpg" alt="HR Analytics Logo" width="350">
</p>

## Overview

This project analyzes an HR Analytics dataset using SQL Server to answer real-world business questions related to employee attrition, salary, job satisfaction, work-life balance, employee performance, and workforce trends.

The objective is to help HR teams make data-driven decisions for improving employee retention and workforce planning.

---

## 🎯 Objectives

- Analyze employee attrition.
- Identify departments with high employee turnover.
- Compare salary across job roles.
- Evaluate employee satisfaction.
- Study work-life balance.
- Analyze overtime impact on attrition.
- Discover trends based on education and experience.

---

## 📂 Dataset

Dataset: HR Analytics Dataset (CSV)

---

## 🗄 Database Schema

```sql
CREATE TABLE dbo.hr_analytics
(
    Age INT,
    Attrition VARCHAR(10),
    BusinessTravel VARCHAR(50),
    DailyRate INT,
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(50),
    EmployeeCount INT,
    EmployeeNumber INT,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(50),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 VARCHAR(5),
    OverTime BIT,
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);
```

---

## 📊 Business Questions

1. Total number of employees.
2. Overall attrition rate.
3. Attrition by department.
4. Average monthly salary by department.
5. Top 10 highest-paid employees.
6. Attrition based on overtime.
7. Average years at company.
8. Gender distribution.
9. Education-wise employee count.
10. Average job satisfaction.
11. Work-life balance analysis.
12. Performance rating distribution.
13. Average salary by job role.
14. Employees with more than 10 years of experience.
15. Department with the highest average income.

---

## 📈 Key Insights

- Sales department has the highest attrition.
- Employees working overtime are more likely to leave.
- Research & Development has the largest workforce.
- Higher job satisfaction generally corresponds to lower attrition.
- Employees with better work-life balance tend to stay longer.

---

## 🛠 Tools Used

- SQL Server Management Studio (SSMS)
- SQL Server
- CSV Dataset
- GitHub

---

## 👨‍💻 Author

**Rohan Gupta**

If you found this project useful, feel free to ⭐ the repository.
