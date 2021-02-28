#  LeetCode-395-longest-substring-with-at-least-k-repeating-characters

>题目链接

[LeetCode-395-longest-substring-with-at-least-k-repeating-characters](https://leetcode-cn.com/problems/longest-substring-with-at-least-k-repeating-characters/)

>思路

分治，找到出现次数小于k的字母，包含这些字母的子串一定不符合要求，因此可以分割字符串，进行分支

>代码

```go

func longestSubstring(s string, k int) int {
    if s == "" {
        return 0
    }
    cnt := [26]int{}
    for _, v := range s {
        cnt[v-'a']++
    }

    var split byte
    for i, v := range cnt {
        if v > 0 && v < k {
            split = 'a' + byte(i)
            break
        }
    }
    if split == 0 {
        return len(s)
    }
    ans := 0
    for _, v := range strings.Split(s, string(split)) {
        ans = max(ans, longestSubstring(v, k))
    }
    return ans
}

func max(a, b int) int {
    if a > b {
        return a
    }
    return b
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.3MB, 在所有 Go 提交中击败了40.98%的用户
