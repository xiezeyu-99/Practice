# LeetCode-面试题01.01

>题目链接

[LeetCode-面试题01.01](https://leetcode-cn.com/problems/is-unique-lcci/)

> 思路


>代码

```go

func isUnique(astr string) bool {
    count:=make(map[byte]int)

    for i:=range astr {
        count[astr[i]]++
        if count[astr[i]] > 1 {
            return false
        }
    }
    return true
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :4.2MB, 在所有 Go 提交中击败了25.92%的用户
