#  LeetCode-227-basic-calculator-ii

>题目链接

[LeetCode-227-basic-calculator-ii](https://leetcode-cn.com/problems/basic-calculator-ii/)

>思路

栈解法

遇到数字处理数字 如果 栈顶是高优先级操作的话 立即处理

最后 剩下的就是加减法

>代码

```go

func calculate(s string) int {

    stack := make([]int, 0, len(s))
    op := make([]int,0, len(s))
    num := 0
    for i:=0; i<len(s); i++ {
        switch s[i] {
            case '1','2','3','4','5','6','7','8','9','0':
                num = 0
                for i < len(s) && s[i]>='0'&&s[i]<='9'{
                    num = num*10 + int(s[i]-'0')
                    i++
                }
                if len(op)>0 && op[len(op)-1] > 2 {
                    if op[len(op)-1] == 3 {
                        stack[len(stack)-1] *= num
                    }else {
                        stack[len(stack)-1] /= num
                    }
                    op = op[:len(op)-1]
                }else {
                    stack = append(stack, num)
                }      
                // 退一格i 上面自动i++
                i--  
            case '+':
                op = append(op, 1)
            case '-':
                op = append(op, -1)
            case '*':
                op = append(op, 3)
            case '/':
                op = append(op, 4)
            default:
                // fmt.Println(s[i])
        }
    }
    // fmt.Println(stack, op)
    for len(op) > 0 {
        stack[1] = stack[0] + op[0]*stack[1]
        op = op[1:]
        stack = stack[1:]
    }

    return stack[0]
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了88.03%的用户
 
内存消耗 :4.7MB, 在所有 Go 提交中击败了86.09%的用户
