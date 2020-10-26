# LeetCode-181-employees-earning-more-than-their-managers

>题目链接

[LeetCode-181-employees-earning-more-than-their-managers](https://leetcode-cn.com/problems/employees-earning-more-than-their-managers/)

>思路

左联

>代码

```go

# Write your MySQL query statement below
select e1.Name as Employee from Employee e1 left join Employee e2 on e1.ManagerId=e2.id  where e1.Salary>e2.Salary and e1.ManagerId is not null


```

>总结

执行用时 :271ms, 在所有 Go 提交中击败了74.69%的用户
 
内存消耗 :0MB, 在所有 Go 提交中击败了100.00%的用户
