#  LeetCode-388-longest-absolute-file-path

>题目链接

[LeetCode-388-longest-absolute-file-path](https://leetcode-cn.com/problems/longest-absolute-file-path/)

>思路

栈

>代码

```go

func lengthLongestPath(input string) int {
    s := strings.Split(input, "\n")

    tmp := []path{}
    for _, v := range s {
        level := strings.Count(v, "\t")
        tmp = append(tmp, path{
            Content: v[level:],
            Level:   level,
        })
    }
    result := 0
    stack := []path{}
    for _, v := range tmp {
        for len(stack) > 0 && stack[len(stack)-1].Level >= v.Level {
            stack = stack[:len(stack)-1]
        }
        stack = append(stack, v)
        if strings.Count(v.Content, ".") > 0 {
            result = max(result, cal(stack))
        }
    }
    return result
}

func cal(stack []path) int {
    result := 0
    for _, v := range stack {
        result += len(v.Content)
    }
    result += len(stack) - 1
    return result
}

func max(a, b int) int {
    if a > b {
        return a
    } else {
        return b
    }
}

type path struct {
    Content string
    Level   int
}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.1MB, 在所有 Go 提交中击败了22.58%的用户
