# LeetCode-856-score-of-parentheses

>题目链接

[LeetCode-856-score-of-parentheses](https://leetcode-cn.com/problems/score-of-parentheses/)

>思路

1.初始化一个只有一个0的切片，切片第一个位置用来存放计算结果

2.遍历字符串，遇到（，则在切片最后面插入0

3.遇到）的话，如果切片末尾的数字是0，则刚好组成一对括号，得1分，如果末尾的数字不是0，则包裹了一个平衡括号字符串，得分X2。得分与倒数第二个数字相加，并且替换倒数第二个数字，删除最后一个数字

> 代码

```go
func scoreOfParentheses(S string) int {
	dataStack := []int{0}
	for _, v := range S {
		if v == '(' {
			dataStack = append(dataStack, 0)
		} else if v == ')' {
			end := len(dataStack) - 1
			last := dataStack[end]
			if last == 0 {
				dataStack[end-1] = 1 + dataStack[end-1]
			} else {
				dataStack[end-1] = last*2 + dataStack[end-1]
			}
			dataStack = dataStack[:end]
		}
	}

	return dataStack[0]
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结


执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
