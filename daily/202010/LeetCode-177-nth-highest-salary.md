# LeetCode-177-nth-highest-salary

>题目链接

[LeetCode-177-nth-highest-salary](https://leetcode-cn.com/problems/nth-highest-salary/)

>思路

排序取第N-1个，为了能返回null，用临时表

>代码

```go

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N := N-1;
  RETURN (
      # Write your MySQL query statement below.
     select (select DISTINCT Salary from Employee order by Salary desc limit N,1) as getNthHighestSalary
  );
END

```


>总结

执行用时 :250ms, 在所有 Go 提交中击败了83.09%的用户
 
内存消耗 :0MB, 在所有 Go 提交中击败了100.00%的用户
