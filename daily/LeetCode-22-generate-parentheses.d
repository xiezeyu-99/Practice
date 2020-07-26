# LeetCode-22-generate-parentheses

>题目链接

[LeetCode-22-generate-parentheses](https://leetcode-cn.com/problems/generate-parentheses/)

>思路

递归，记录左右括号的数量，如果左括号少于n，则可以添加左括号，如果右括号少于左括号，则可以添加一个右括号。当左右括号相等且括号对数等于n时终止递归

>代码

```go

func generateParenthesis(n int) []string {
    Output := new([]string)
    _generate(0, 0, n, "", Output)
    return *Output
}

func _generate(left int, right int, max int, s string, Output *[]string) {
    // 递归终止条件
    if left == right && left == max {
        *Output = append(*Output, s)
        return
    }
    // 递归主体
    if left < max {
        _generate(left+1, right, max, s+"(", Output)
    }
    if right < left {
        _generate(left, right+1, max, s+")", Output)
    }
}


```

>复杂度分析

时间复杂度：O((4^n)/√n)  分析见:(https://leetcode-cn.com/problems/generate-parentheses/solution/gua-hao-sheng-cheng-by-leetcode-solution/) 

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.5MB, 在所有 Go 提交中击败了100.00%的用户
