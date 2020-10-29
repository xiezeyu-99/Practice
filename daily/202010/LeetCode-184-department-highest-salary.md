# LeetCode-184-department-highest-salary

>题目链接

[LeetCode-184-department-highest-salary](https://leetcode-cn.com/problems/department-highest-salary/)

>思路

先用子查询查出每个部门的最高工资，然后再查对应工资的员工

>代码

```go

# Write your MySQL query statement below
SELECT
	Department.NAME AS Department,
	Employee.NAME AS Employee,
	Employee.Salary AS Salary 
FROM
	Employee
	JOIN Department ON Employee.DepartmentId = Department.id 
WHERE
	( Employee.Salary, Employee.DepartmentId ) IN (
	SELECT
		max( Salary ),
		DepartmentId 
	FROM
		Employee 
GROUP BY
	DepartmentId)


```

>总结

执行用时 :660ms, 在所有 Go 提交中击败了12.76%的用户
 
内存消耗 :0MB, 在所有 Go 提交中击败了100.00%的用户
