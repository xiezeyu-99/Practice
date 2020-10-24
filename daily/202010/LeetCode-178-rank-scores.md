# LeetCode-178-rank-scores
>题目链接

[LeetCode-178-rank-scores](https://leetcode-cn.com/problems/rank-scores/

>思路

用dense_rank()函数对from子句生成的结果集划分为区

>代码

```go

select Score, dense_rank() over (order by Score desc)  as `Rank` from Scores;

```

>总结

执行用时 :222ms, 在所有 Go 提交中击败了70.80%的用户
 
内存消耗 :0MB, 在所有 Go 提交中击败了100.00%的用户
