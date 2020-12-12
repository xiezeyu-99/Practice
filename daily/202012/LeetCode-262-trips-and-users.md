#  LeetCode-262-trips-and-users

>题目链接

[LeetCode-262-trips-and-users](https://leetcode-cn.com/problems/trips-and-users/)


>代码

```go

# Write your MySQL query statement below
SELECT T.request_at AS `Day`, 
    ROUND(
            SUM(
                IF(T.STATUS = 'completed',0,1)
            )
            / 
            COUNT(T.STATUS),
            2
    ) AS `Cancellation Rate`
FROM Trips AS T
JOIN Users AS U1 ON (T.client_id = U1.users_id AND U1.banned ='No')
JOIN Users AS U2 ON (T.driver_id = U2.users_id AND U2.banned ='No')
WHERE T.request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY T.request_at

```


>总结

执行用时 :288ms, 在所有 Go 提交中击败了87.34%的用户
 
内存消耗 :0MB, 在所有 Go 提交中击败了100.00%的用户
