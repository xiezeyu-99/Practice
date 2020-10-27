# LeetCode-182-duplicate-emails

>题目链接

[LeetCode-182-duplicate-emails](https://leetcode-cn.com/problems/duplicate-emails/)

>思路

group by

>代码

```go

# Write your MySQL query statement below
select Email from Person group by Email having count(*)>1


```

>总结

执行用时 :268ms, 在所有 Go 提交中击败了63.79%的用户
 
内存消耗 :0MB, 在所有 Go 提交中击败了100.00%的用户
