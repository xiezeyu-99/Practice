# LeetCode-32-longest-valid-parentheses

>题目链接

[LeetCode-32-longest-valid-parentheses](https://leetcode-cn.com/problems/longest-valid-parentheses/)

>思路

1、双向验证，从左边开始遍历时，记录左右括号的个数，当“（”数量与“）”相等时计算有效长度，当“）”数量大于“（”时，证明子串已无效，重置左右括号的计数累加，重新开始计算子串长度

2、从左遍历还有有一种情况无法做判断的，就是左括号数量大于右括号数量的情况，所以从右开始再遍历一次，做相同的操作，取两次遍历中得到的最大值作为输出。由于左遍历时，括号数量相等的情况下，有效子串已经确定，因此右遍历只需要遍历到左遍历括号最后一次相等的位置即可

>代码

```go

func longestValidParentheses(s string) int {
    left,right,pos:=0,0,0
    var max float64=0

    for i:=0;i<=len(s)-1;i++{
        if s[i]=='(' {
            left++
        } else {
            right++
        }
        if left==right {
            pos=i
            max = math.Max(float64(max),float64(right*2))
        } else if right>left {
            left,right=0,0
        }
    }

    left,right=0,0
    for i:=len(s)-1;i>=pos;i--{
        if s[i]=='(' {
            left++
        } else {
            right++
        }
        if left==right {
            max = math.Max(float64(max),float64(left*2))
        } else if right<left {
            left,right=0,0
        }
    }

    return int(max)
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0 ms, 在所有 Go 提交中击败了 100.00%的用户

内存消耗 :2.3 MB, 在所有 Go 提交中击败了100.00%的用户
