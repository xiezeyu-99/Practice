#  LeetCode-268-missing-number

>题目链接

[LeetCode-268-missing-number](https://leetcode-cn.com/problems/missing-number/)

>  思路

计算递增数列的总和，减去数组每个元素的总和，结果就是答案

>代码

```go

func missingNumber(nums []int) int {
    count := len(nums)
    sum:=0
    for _,v:=range nums{
        sum+=v
    }
    return (count+1)*count/2-sum
}

```


>总结

执行用时 :16ms, 在所有 Go 提交中击败了96.94%的用户
 
内存消耗 :6.1MB, 在所有 Go 提交中击败了98.35%的用户
