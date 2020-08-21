# LeetCode-76-minimum-window-substring
>题目链接

[LeetCode-76-minimum-window-substring](https://leetcode-cn.com/problems/minimum-window-substring/)

>思路

记录下所需要的字母的个数，然后用滑动窗口，移动右边界直到包含所有字母，然后开始移动左边界并记录最小子串。当左边界移动后不再包含所有字母，则又开始移动右边界

>代码

```go

func minWindow(s string, t string) (result string) {
    ls, lt := len(s), len(t)
    if ls < lt || lt == 0 || ls == 0 {
        return
    }
    var need, window [128]int // map是一种更通用的做法，但数组的效率更高
    for i := 0; i < lt; i++ {
        need[t[i]]++ // 记录需要的元素及数量
    }
    needType := 0 // 记录需要的元素种类
    for i := 0; i < 128; i++ {
        if need[i] > 0 {
            needType++
        }
    }
    valid := 0
    left := 0
    for i := 0; i < ls; i++ {
        window[s[i]]++
        if window[s[i]] == need[s[i]] {
            valid++
        }
        // 窗口包含所有所需元素时，进行记录，并移动左侧边界
        for valid == needType {
            // 计算长度
            if result == "" || i+1-left < len(result) {
                result = s[left : i+1]
            }
            // 滑动左侧边界
            window[s[left]]--
            if window[s[left]] < need[s[left]] {
                valid--
            }
            left++
        }
    }
    return
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.9MB, 在所有 Go 提交中击败了94.87%的用户
