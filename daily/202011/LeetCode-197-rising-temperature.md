# LeetCode-197-rising-temperature

>题目链接

[LeetCode-197-rising-temperature](https://leetcode-cn.com/problems/rising-temperature/)

>思路

自联

>代码

```sql

# Write your MySQL query statement below
select w1.id from Weather w1,Weather w2 where w1.recordDate =date_add(w2.recordDate , interval 1 day) and w1.Temperature>w2.Temperature


```


>总结

执行用时 :362ms, 在所有 Go 提交中击败了88.36%的用户
 
内存消耗 :0MB, 在所有 Go 提交中击败了100.00%的用户
