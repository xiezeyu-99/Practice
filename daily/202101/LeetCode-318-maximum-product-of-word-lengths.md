#  LeetCode-318-maximum-product-of-word-lengths

>题目链接

[LeetCode-318-maximum-product-of-word-lengths](https://leetcode-cn.com/problems/maximum-product-of-word-lengths/)

>思路

用位运算纯粹字母

>代码

```go

func maxProduct(words []string) int {
    if words == nil || len(words) < 2 {
        return 0
    }
    length := len(words)
    masks := make([]int, length)
    for i, word := range words[:] {
        for _, c := range word {
            masks[i] |= 1 << uint(c - 'a')
        }
    }
    max := 0
    for i := 0; i < length; i++ {
        for j := i + 1; j < length; j++ {
            if (masks[i] & masks[j]) == 0 {
                prod := len(words[i]) * len(words[j])
                if prod > max {
                    max = prod
                }
            }
        }
    }
    return max
}

```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了82.35%的用户
 
内存消耗 :6.4MB, 在所有 Go 提交中击败了64.71%的用户
