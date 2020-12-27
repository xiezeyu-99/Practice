#  LeetCode-292-nim-game

>题目链接

[LeetCode-292-nim-game](https://leetcode-cn.com/problems/nim-game/)

>思路

4的倍数就无法赢

>代码

```go

func canWinNim(n int) bool {
    return (n%4 != 0)
}

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了66.03%的用户
