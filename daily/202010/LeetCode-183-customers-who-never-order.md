# LeetCode-183-customers-who-never-order

>题目链接

[LeetCode-183-customers-who-never-order](https://leetcode-cn.com/problems/customers-who-never-order/)

>思路

not in子查询

>代码

```go

# Write your MySQL query statement below
select Customers.Name as Customers from Customers where id not in (select DISTINCT CustomerId from Orders)


```

>总结

执行用时 :403ms, 在所有 Go 提交中击败了47.26%的用户
 
内存消耗 :0MB, 在所有 Go 提交中击败了100.00%的用户
