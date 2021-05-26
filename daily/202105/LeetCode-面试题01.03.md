# LeetCode-面试题01.03

>题目链接

[LeetCode-面试题01.03](https://leetcode-cn.com/problems/string-to-url-lcci/)

> 思路


>代码

```go

func replaceSpaces(S string, length int) string {
    res:=[]byte{}
    for i:=0;i<length;i++{
        if S[i] == ' ' {
            res = append(res, []byte{'%','2','0'}...)
        } else {
            res = append(res, S[i])
        }
    }
    return string(res)
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :20ms, 在所有 Go 提交中击败了71.69%的用户

内存消耗 :8.9MB, 在所有 Go 提交中击败了41.23%的用户
