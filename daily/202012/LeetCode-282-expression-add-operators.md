#  LeetCode-282-expression-add-operators

>题目链接

[LeetCode-282-expression-add-operators](https://leetcode-cn.com/problems/expression-add-operators/)

>  思路

回溯

>代码

```go

var (
    g_target int
    g_num string
    g_result []string
)

const (
    add byte = '+'
    sub = '-'
    mul = '*'
)

func addOperators(num string, target int) []string {
    g_num = num
    g_target = target
    g_result = make([]string, 0)
    backtrack(0, 0, add, new([]string))
    return g_result
}

func backtrack(sum, i int, op byte, expr *[]string) {
    for j := i + 1; j <= len(g_num); j++ {
        if j > i+1 && g_num[i] == '0' {
            continue
        }
        *expr = append(*expr, string(op), g_num[i:j])
        if j == len(g_num) {
            if calc(expr) == g_target {
                g_result = append(g_result, strings.Join((*expr)[1:], ""))
            }
            *expr = (*expr)[:len(*expr) - 2]
            return
        }
        backtrack(sum, j, add, expr)
        backtrack(sum, j, sub, expr)
        backtrack(sum, j, mul, expr)
        *expr = (*expr)[:len(*expr) - 2]
    }
}

// expr 为 "op a op b op c" 形式
func calc(expr *[] string) int {
    stack := make([]int, 0)
    for i := 0; i < len(*expr); i += 2 {
        x, _ := strconv.ParseInt((*expr)[i+1], 10, 32)
        switch (*expr)[i] {
        case "+":
            stack = append(stack, int(x))
        case "-":
            stack = append(stack, -int(x))
        case "*":
            p := &stack[len(stack)-1]
            *p = *p * int(x)
        }
    }
    ans := 0
    for _, x := range stack {
        ans += x
    }
    return ans
}



```


>总结

执行用时 :328ms, 在所有 Go 提交中击败了20.00%的用户
 
内存消耗 :7.4MB, 在所有 Go 提交中击败了60%的用户
