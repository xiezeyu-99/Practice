#  LeetCode-385-mini-parser

>题目链接

[LeetCode-385-mini-parser](https://leetcode-cn.com/problems/mini-parser/)

>思路



>代码

```go

/**
 * // This is the interface that allows for creating nested lists.
 * // You should not implement it, or speculate about its implementation
 * type NestedInteger struct {
 * }
 *
 * // Return true if this NestedInteger holds a single integer, rather than a nested list.
 * func (n NestedInteger) IsInteger() bool {}
 *
 * // Return the single integer that this NestedInteger holds, if it holds a single integer
 * // The result is undefined if this NestedInteger holds a nested list
 * // So before calling this method, you should have a check
 * func (n NestedInteger) GetInteger() int {}
 *
 * // Set this NestedInteger to hold a single integer.
 * func (n *NestedInteger) SetInteger(value int) {}
 *
 * // Set this NestedInteger to hold a nested list and adds a nested integer to it.
 * func (n *NestedInteger) Add(elem NestedInteger) {}
 *
 * // Return the nested list that this NestedInteger holds, if it holds a nested list
 * // The list length is zero if this NestedInteger holds a single integer
 * // You can access NestedInteger's List element directly if you want to modify it
 * func (n NestedInteger) GetList() []*NestedInteger {}
 */
func deserialize(s string) *NestedInteger {
    if s[0] != '[' {
        var ni NestedInteger
        num, _ := strconv.Atoi(s)
        ni.SetInteger(num)
        return &ni
    }
    stack := make([]NestedInteger, 0)
    sign, num, isNum := 1, 0, false
    for _, char := range s {
        //0-9 [ - , ]
        if char == '[' {
            stack = append(stack, NestedInteger{})
        } else if char == ']' {
            if isNum {
                var ni NestedInteger
                ni.SetInteger(sign * num)
                stack[len(stack)-1].Add(ni)
                sign, num, isNum = 1, 0, false
            }
            if len(stack) > 1 {
                pop := stack[len(stack)-1]
                stack = stack[:len(stack)-1]
                /*
                    这样写"[[]]"会报错，应该是与Add底层实现有关系
                    top := stack[len(stack)-1]
                    top.Add(pop)
                */
                stack[len(stack)-1].Add(pop)
            }
        } else if char == ',' {
            if isNum {
                var ni NestedInteger
                ni.SetInteger(sign * num)
                stack[len(stack)-1].Add(ni)
                sign, num, isNum = 1, 0, false
            }
        } else if char == '-' {
            sign = -1
        } else {
            num = int(char-'0') + num*10
            isNum = true
        }
    }
    return &stack[0]
}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :4.4MB, 在所有 Go 提交中击败了29.17%的用户
