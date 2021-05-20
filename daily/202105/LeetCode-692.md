# LeetCode-692

>题目链接

[LeetCode-692](https://leetcode-cn.com/problems/top-k-frequent-words/)

> 思路


>代码

```go

func topKFrequent(words []string, k int) []string {
    cnt := map[string]int{}
    for _, w := range words {
        cnt[w]++
    }
    uniqueWords := make([]string, 0, len(cnt))
    for w := range cnt {
        uniqueWords = append(uniqueWords, w)
    }
    sort.Slice(uniqueWords, func(i, j int) bool {
        s, t := uniqueWords[i], uniqueWords[j]
        return cnt[s] > cnt[t] || cnt[s] == cnt[t] && s < t
    })
    return uniqueWords[:k]
}

```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(n)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了81.34%的用户

内存消耗 :4.2MB, 在所有 Go 提交中击败了98.51%的用户
