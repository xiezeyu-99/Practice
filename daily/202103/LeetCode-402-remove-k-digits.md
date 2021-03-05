# LeetCode-402-remove-k-digits

>题目链接

[LeetCode-402-remove-k-digits](https://leetcode-cn.com/problems/remove-k-digits/)

>思路

顺序入栈，遇到栈顶元素比当前元素大的，就循环出栈。遍历完后，如果还没有删够k个元素，就从栈顶开始继续删除，最后去掉前缀的0，就是结果

>代码

```go

func removeKdigits(num string, k int) string {
    stack:=[]byte{}
    for i:=0;i<len(num);i++{
        for len(stack) > 0 && stack[len(stack)-1] > num[i] && k>0{
            stack = stack[:len(stack)-1]
            k--
        }
        stack = append(stack, num[i])
    }
    stack = stack[:len(stack)-k]
    ans := strings.TrimLeft(string(stack), "0")

    if ans == "" {
        return "0"
    }
    return ans
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.6 MB, 在所有 Go 提交中击败了57.01%的用户
