# LeetCode-175-combine-two-tables

>题目链接

[LeetCode-175-combine-two-tables](https://leetcode-cn.com/problems/combine-two-tables/)

>思路

左联

>代码

```go

select Person.FirstName, Person.LastName, Address.City, Address.State from Person left join Address on Person.PersonId=Address.PersonId


```


>总结

执行用时 :249ms, 在所有 Go 提交中击败了88.33%的用户
 
内存消耗 :0MB, 在所有 Go 提交中击败了100.00%的用户
