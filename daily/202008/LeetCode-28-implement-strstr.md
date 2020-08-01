# LeetCode-28-implement-strstr
>题目链接

[LeetCode-28-implement-strstr](https://leetcode-cn.com/problems/implement-strstr/)

>思路

遍历逐个比较

>代码

```go

func strStr(haystack string, needle string) int {

    for i:=0;i<len(haystack);i++ {
        if i+len(needle) < len(haystack) && haystack[i:i+len(needle)] == needle {
            return i
        }
    }
    return -1    
}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.3MB, 在所有 Go 提交中击败了60.00%的用户
