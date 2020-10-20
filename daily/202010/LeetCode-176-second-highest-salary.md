# LeetCode-176-second-highest-salary

>题目链接

[LeetCode-176-second-highest-salary](https://leetcode-cn.com/problems/second-highest-salary/)

>思路

排序取第二个，为了能返回null，用临时表

>代码

```go

select (select DISTINCT Salary  from Employee order by Salary desc limit 1,1) as SecondHighestSalary

```


>总结

执行用时 :157ms, 在所有 Go 提交中击败了82.09%的用户
 
内存消耗 :0MB, 在所有 Go 提交中击败了100.00%的用户
