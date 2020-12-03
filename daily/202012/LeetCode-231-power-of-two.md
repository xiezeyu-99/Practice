#  LeetCode-231-power-of-two

>题目链接

[LeetCode-231-power-of-two](https://leetcode-cn.com/problems/power-of-two/)

>思路

前序遍历

>代码

```go

func isPowerOfTwo(n int) bool {
    if n == 0 {
        return false
    }
    for n%2 == 0 {
        n = n / 2
    }
    return n == 1
}  

```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.2MB, 在所有 Go 提交中击败了5.79%的用户
