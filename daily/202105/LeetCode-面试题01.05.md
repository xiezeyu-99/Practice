# LeetCode-面试题01.05

>题目链接

[LeetCode-面试题01.05](https://leetcode-cn.com/problems/one-away-lcci/)

> 思路


>代码

```go

func oneEditAway(first string, second string) bool {
    if len(first) - len(second) > 1 || len(second) - len(first) > 1 {
        return false
    }

    i,j:=0,0
    for i<len(first) && j<len(second) {
        if first[i] == second[j] {
            i++
            j++
        } else {
            if len(first) > len(second) {
                return first[:i]+first[i+1:] == second
            } else if len(first) < len(second) {
                return first == second[:j]+second[j+1:]
            } else {
                return first[:i]+first[i+1:] == second[:j]+second[j+1:]
            }
        }
    }
    return true
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.5MB, 在所有 Go 提交中击败了100.00%的用户
