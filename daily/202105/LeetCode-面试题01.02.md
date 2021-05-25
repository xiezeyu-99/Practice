# LeetCode-面试题01.02

>题目链接

[LeetCode-面试题01.02](https://leetcode-cn.com/problems/check-permutation-lcci/)

> 思路


>代码

```go

func CheckPermutation(s1 string, s2 string) bool {
    if len(s1) != len(s2) {
        return false
    }
    count:=make(map[rune]int)

    for _,v:=range s1 {
        count[v]++
    }

    for _,v:=range s2 {
        count[v]--
        if count[v] == 0 {
            delete(count, v)
        }
    }
    return len(count)==0
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了53.49%的用户
