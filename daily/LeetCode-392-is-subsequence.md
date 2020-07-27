# LeetCode-392-is-subsequence

> 题目链接

[LeetCode-392-is-subsequence](https://leetcode-cn.com/problems/is-subsequence/)

> 思路

一位一位的对比，最后s还有剩的就是不匹配


> 代码

```go

func isSubsequence(s string, t string) bool {
    if len(s) == 0{
        return true
    }
    j:=0
    for i:=range t{      
        if t[i] == s[j] {
            j++
            if j==len(s) {
                return true
            }
        }
    }
    return false
}


```

> 复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)


> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2 MB, 在所有 Go 提交中击败了100.00%的用户

