#  LeetCode-224-basic-calculator

>题目链接

[LeetCode-224-basic-calculator](https://leetcode-cn.com/problems/basic-calculator/)

>思路

用栈

>代码

```go

func calculate(s string) int {
    num := 0  // 提取s中的数字
    res := 0  // 返回的计算结果
    sign := 1 // 标志记录运算符号
    stack := make([]int, 0, len(s))
    for i := 0; i < len(s); i++ {
        switch s[i] {
        case '0', '1', '2', '3', '4', '5', '6', '7', '8', '9':
            // 提取s中的数字
            num = 0
            for ; i < len(s) && s[i] >= '0' && s[i] <= '9'; i++ {
                // 注意处理多位数字
                num = 10*num + int(s[i]-'0')
            }
            // 根据前面的记录，进行运算
            res += sign * num
            // 此时 s[i] 已经不是数字了
            // for 语句中，会再＋1，所以这里先 -1
            i--
        case '+':
            sign = 1
        case '-':
            sign = -1
        case '(':
            // 遇到 '(' 就把当前的 res 和 sign 入栈，保存好当前的运行环境
            stack = append(stack, res, sign)
            // 对 res 和 sign 赋予新的值
            res = 0
            sign = 1
        case ')':
            // 遇到')'出栈
            // sign 是与这个')'匹配的'('前的运算符号
            sign = stack[len(stack)-1]
            // temp 是sign前的运算结果
            temp := stack[len(stack)-2]
            stack = stack[:len(stack)-2]
            // '(' 与 ')' 之间的运算结果
            //          ↓
            res = sign*res + temp
        }
    }
    return res
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了86.60%的用户
 
内存消耗 :3MB, 在所有 Go 提交中击败了84.21%的用户
