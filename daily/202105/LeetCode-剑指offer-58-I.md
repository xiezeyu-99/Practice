# LeetCode-剑指offer-58-I

>题目链接

[LeetCode-剑指offer-58-I](https://leetcode-cn.com/problems/fan-zhuan-dan-ci-shun-xu-lcof/)

> 思路


>代码

```go

func reverseWords(s string) string {
    strList := strings.Split(s, " ")
    var res []string
    for i := len(strList) - 1; i >= 0; i-- {
        str := strings.TrimSpace(strList[i])
        if len(str) > 0 {
            res = append(res, strList[i])
        }
    }
    return strings.Join(res, " ")
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了61.42%的用户
