# LeetCode-20-valid-parentheses

> 题目链接

[LeetCode-20-valid-parentheses](https://leetcode-cn.com/problems/valid-parentheses/)

> 思路

用一个栈去处理字符串，是左括号直接入栈，右括号就出栈，检查是否能构成一对完整括号，如果不能就直接返回false。最后遍历完数组，检查栈，如果里面还有元素也返回false


> 代码

```go

func isValid(s string) bool {
    if len(s)==1 || len(s)%2 != 0{
        return false
    }
    status:=[]byte{}
    for i:=range s{
        if s[i] == '(' || s[i] == '{' || s[i] == '[' {
            status = append(status,s[i])
        } else if len(status) == 0 {
            return false
        } else {
            a:=status[len(status)-1]
            if s[i] == ')' && a!='(' {
                return false
            } else if s[i] == '}' && a!='{' {
                return false
            } else if s[i] == ']' && a!='[' {
                return false
            }
            status = status[:len(status)-1]
        }
    }
    if len(status) > 0{
        return false
    } else {
        return true
    }
    
}


```

> 复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)


> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2 MB, 在所有 Go 提交中击败了100.00%的用户

