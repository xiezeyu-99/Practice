# LeetCode-150-evaluate-reverse-polish-notation

>题目链接

[LeetCode-150-evaluate-reverse-polish-notation](https://leetcode-cn.com/problems/evaluate-reverse-polish-notation/)

>思路

1.建立一个栈

2.遍历tokens，如果是数字，那就入栈，如果是运算符，则从栈中取出栈顶的两个数，进行运算，得到的结果再次入栈

>代码

```go

type polanStack struct {
    data []string
}

func (p *polanStack)push(d string){
    p.data = append(p.data,d)
}

func (p * polanStack)pop()string{
    data:=p.data[len(p.data)-1]
    p.data = p.data[:len(p.data)-1]
    return data
}

func evalRPN(tokens []string) int {
    pStack:=polanStack{}

    for _,token :=range tokens  {

        if token == "+" || token == "-" || token == "*" || token == "/"  {
            var result int
            num1,_:=strconv.Atoi(pStack.pop())
            num2,_:=strconv.Atoi(pStack.pop())
            switch token {
            case "+":
                result = num2+num1
            case "-":
                result = num2-num1
            case "*":
                result = num2*num1
            case "/":
                result = int(num2/num1)
            }
            pStack.push(strconv.Itoa(result))
        } else {
            pStack.push(token)
        }
    }
    num,_:= strconv.Atoi(pStack.pop())
    return num
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4 ms, 在所有 Go 提交中击败了 87.65%的用户

内存消耗 :4.4 MB, 在所有 Go 提交中击败了100.00%的用户
