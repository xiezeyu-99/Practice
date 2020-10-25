# LeetCode-180-consecutive-numbers
>题目链接

[LeetCode-180-consecutive-numbers](https://leetcode-cn.com/problems/consecutive-numbers/)

>思路

同一个表作为临时表查三次

>代码

```go

# Write your MySQL query statement below
 select distinct l1.Num as  ConsecutiveNums from
  Logs l1, Logs l2 , Logs l3
  where
  l1.Id = l2.Id - 1 AND l2.Id = l3.Id - 1 AND l1.Num = l2.Num AND l2.Num = l3.Num


```

>总结

执行用时 :404ms, 在所有 Go 提交中击败了35.80%的用户
 
内存消耗 :0MB, 在所有 Go 提交中击败了100.00%的用户
