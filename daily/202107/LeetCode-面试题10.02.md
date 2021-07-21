# LeetCode-面试题10.02

>题目链接

[LeetCode-面试题10.02](https://leetcode-cn.com/problems/group-anagrams-lcci/)

> 思路

>代码

```go

func groupAnagrams(strs []string) [][]string {
    mp := map[[26]int][]string{}
    for _, str := range strs {
        cnt := [26]int{}
        for _, b := range str {
            cnt[b-'a']++
        }
        mp[cnt] = append(mp[cnt], str)
    }
    ans := [][]string{}
    for _, v := range mp {
        ans = append(ans, v)
    }
    return ans
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
