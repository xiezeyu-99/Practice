#  LeetCode-326-power-of-three

>题目链接

[LeetCode-326-power-of-three](https://leetcode-cn.com/problems/power-of-three/)

>思路

不断乘以3

>代码

```go

func isPowerOfThree(n int) bool {
    res:=1
    for res<n{
        res *=3
    }
    return res==n
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :24ms, 在所有 Go 提交中击败了91.76%的用户
 
内存消耗 :6.3MB, 在所有 Go 提交中击败了71.43%的用户
