# LeetCode-面试题01.09

>题目链接

[LeetCode-面试题01.09](https://leetcode-cn.com/problems/string-rotation-lcci/)

> 思路

连个s1拼接，s2是他的子串

>代码

```go

func isFlipedString(s1 string, s2 string) bool {
    // 长度都为0
    if len(s1) ==0 && len(s2) == 0 {
        return true
    }

    s := s1+s1
    return len(s2)>0 && strings.Index(s, s2) > -1
}


```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :3.2MB, 在所有 Go 提交中击败了15.32%的用户
