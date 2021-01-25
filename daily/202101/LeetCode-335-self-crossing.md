# LeetCode-335-self-crossing

>题目链接

[LeetCode-335-self-crossing](https://leetcode-cn.com/problems/self-crossing/)

>思路



>代码

```go

func isSelfCrossing(x []int) bool {
    for i := 3; i < len(x); i++ {
        if i>=3&&x[i-1]<=x[i-3]&&x[i]>=x[i-2] {
            return true
        }
        if i>=4&&x[i-3]==x[i-1]&&x[i]+x[i-4]>=x[i-2] {
            return true
        }
        if (i>=5 && x[i]+x[i-4]>=x[i-2] && x[i-1]+x[i-5]>=x[i-3] && x[i-2]>x[i-4] && x[i-3]>x[i-1]){
           return true 
        }
    }
    return false
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :2MB, 在所有 Go 提交中击败了100.00%的用户
