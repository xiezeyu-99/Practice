# LeetCode-面试题08.05

>题目链接

[LeetCode-面试题08.05](https://leetcode-cn.com/problems/recursive-mulitply-lcci/)

> 思路


>代码

```go

func multiply(A int, B int) int {
    if A == 1 {
        return B
    }
    if B == 1 {
        return A
    }
    if A > B {
        return multiply(A,B-1) + A
    } else {
        return multiply(A-1,B) + B
    }   
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
