# LeetCode-242-problems/valid-anagram

>题目链接

[LeetCode-242-problems/valid-anagram](https://leetcode-cn.com/problems/valid-anagram/)

>思路

用两个数组，分别记下两个字符串中每个字符出现的次数，然后对比两个数组是否相等

>代码

```go

func isAnagram(s string, t string) bool {
    if len(s) != len(t) {
        return false
    }
    arr1:=[26]int{}
    arr2:=[26]int{}

    for i:=0;i<len(s);i++ {
        arr1[s[i]-'a']++
        arr2[t[i]-'a']++
    }
    return arr1==arr2
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：两个固定26个元素的数组，空间复杂度O(1)

>总结

执行用时 :0 ms, 在所有 Go 提交中击败了 100.00%的用户

内存消耗 :3 MB, 在所有 Go 提交中击败了100.00%的用户
