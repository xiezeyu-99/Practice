# LeetCode-409-longest-palindrome

>题目链接

[LeetCode-409-longest-palindrome](https://leetcode-cn.com/problems/longest-palindrome/)

>思路

出现偶数次的字母全部可以放进去，出现奇数次的可以减去一个再全部放进去，到最后再把减去的这个加上

>代码

```go

func longestPalindrome(s string) int {
    count:=make(map[rune]int)
    for _,v:=range s {
        count[v]++
    }
    res:=0
    odd:=0
    for _,v:=range count {
        if v%2 == 0 {
            res += v
        } else {
            odd = 1
            res += v-1
        }
    }
    return res + odd
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了34.90%的用户
