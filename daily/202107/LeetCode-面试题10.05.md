# LeetCode-面试题10.05

>题目链接

[LeetCode-面试题10.05](https://leetcode-cn.com/problems/sparse-array-search-lcci/)

> 思路

>代码

```go

func findString(words []string, s string) int {
    left,right:=0,len(words)-1

    for left<=right {
        mid:=(right-left)/2+left
        for words[mid] == ""&&mid<right {
            mid++
        }
        if words[mid] == s {
            return mid
        } else if mid == right {
            right--
        } else if words[mid] > s {
            right = mid - 1
        } else if words[mid] < s {
            left = mid + 1
        }
    }
    return -1
}


```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
