# LeetCode-185-department-top-three-salaries

>题目链接

[LeetCode-185-department-top-three-salaries](https://leetcode-cn.com/problems/department-top-three-salaries/)

>思路



>代码

```go

# Write your MySQL query statement below
SELECT
    d.Name AS 'Department', e1.Name AS 'Employee', e1.Salary
FROM
    Employee e1
        JOIN
    Department d ON e1.DepartmentId = d.Id
WHERE
    3 > (SELECT
            COUNT(DISTINCT e2.Salary)
        FROM
            Employee e2
        WHERE
            e2.Salary > e1.Salary
                AND e1.DepartmentId = e2.DepartmentId
        )




```

>总结

执行用时 :933ms, 在所有 Go 提交中击败了41.49%的用户
 
内存消耗 :0MB, 在所有 Go 提交中击败了100.00%的用户
