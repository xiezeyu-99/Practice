#  LeetCode-390-elimination-game

>题目链接

[LeetCode-390-elimination-game](https://leetcode-cn.com/problems/elimination-game/)

>思路

奇数序列的结果和偶数序列的一样，偶数没看懂

>代码

```go

func lastRemaining(n int) int {
   if n<3 {return n}
   if n%2==1{
       return lastRemaining(n-1)
   }else{
       return 2*(n/2+1-lastRemaining(n/2))
   }
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2.8MB, 在所有 Go 提交中击败了64.44%的用户
