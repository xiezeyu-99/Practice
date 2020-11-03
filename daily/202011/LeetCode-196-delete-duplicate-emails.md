# LeetCode-196-delete-duplicate-emails

>题目链接

[LeetCode-196-delete-duplicate-emails](https://leetcode-cn.com/problems/delete-duplicate-emails/)

>思路

自联

>代码

```sql

# Write your MySQL query statement below
DELETE p1 FROM Person p1,
    Person p2
WHERE
    p1.Email = p2.Email AND p1.Id > p2.Id


```


>总结

执行用时 :1417ms, 在所有 Go 67.19.00%的用户
 
内存消耗 :0MB, 在所有 Go 提交中击败了100.00%的用户
