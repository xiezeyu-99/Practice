# LeetCode-面试题17.13-re-space-lcci

>题目链接

[LeetCode-面试题17.13-re-space-lcci](https://leetcode-cn.com/problems/re-space-lcci/)

>思路

定义 dp[i] 表示考虑前 i 个字符最少的未识别的字符数量，从前往后计算 dp 值。

考虑转移方程，每次转移的时候我们考虑第 j(j≤i) 个到第 i 个字符组成的子串 sentence[j−1⋯i−1] （注意字符串下标从 0 开始）是否能在词典中找到，如果能找到的话按照定义转移方程即为

dp[i]=min(dp[i],dp[j−1])

否则没有找到的话我们可以复用 dp[i−1] 的状态再加上当前未被识别的第 i 个字符，因此此时 dp 值为

dp[i]=dp[i−1]+1

>代码

```go

const (
    P = math.MaxInt32
    BASE = 41
)

func respace(dictionary []string, sentence string) int {
    hashValues := map[int]bool{}
    for _, word := range dictionary {
        hashValues[getHash(word)] = true
    }
    f := make([]int, len(sentence) + 1)
    for i := 1; i < len(f); i++ {
        f[i] = len(sentence)
    }
    for i := 1; i <= len(sentence); i++ {
        f[i] = f[i-1] + 1
        hashValue := 0
        for j := i; j >= 1; j-- {
            t := int(sentence[j-1] - 'a') + 1
            hashValue = (hashValue * BASE + t) % P
            if hashValues[hashValue] {
                f[i] = min(f[i], f[j-1])
            }
        }
    }
    return f[len(sentence)]
}

func getHash(s string) int {
    hashValue := 0
    for i := len(s) - 1; i >= 0; i-- {
        hashValue = (hashValue * BASE + int(s[i] - 'a') + 1) % P
    }
    return hashValue
}

func min(x, y int) int {
    if x < y {
        return x
    }
    return y
}
```

>复杂度分析

时间复杂度：O(|dictionary | + n^2)

空间复杂度：O(n+q)，其中 n 为 sentence 中元素的个数，q 为词典中单词的个数。

>总结

执行用时 :48ms, 在所有 Go 提交中击败了91.67%的用户

内存消耗 :4.8MB, 在所有 Go 提交中击败了100.00%的用户
