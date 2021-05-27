# LeetCode-面试题01.04

>题目链接

[LeetCode-面试题01.04](https://leetcode-cn.com/problems/palindrome-permutation-lcci/)

> 思路

回文排列只能有一个奇数字母

>代码

```go

func canPermutePalindrome(s string) bool {
    count:=make(map[byte]int)
    for i:=0;i<len(s);i++ {
        count[s[i]] ++
    }
    j:=0
    for _,v:=range count {
        if v%2 != 0 {
            j++ 
            if j > 1 {
                return false
            }
        }
    }
    return true
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了56.63%的用户
