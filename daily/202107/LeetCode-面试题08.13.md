# LeetCode-面试题08.13

>题目链接

[LeetCode-面试题08.13](https://leetcode-cn.com/problems/pile-box-lcci/)

> 思路

先排序，然后dp[i]表示以i为底的最大高度，因为能往i上面放的只有小于i的箱子

>代码

```go

func pileBox(box [][]int) int {
    dp:=make([]int, len(box))
    sort.Slice(box, func(i,j int) bool{
        return box[i][0] < box[j][0]
    })
    res:=0
    for i:=0;i<len(box);i++ {
        dp[i] = box[i][2]
        for j:=0;j<i;j++ {
            if box[i][0] > box[j][0]&&box[i][1] > box[j][1]&&box[i][2] > box[j][2]{
                dp[i] = max(dp[i], dp[j]+box[i][2])
            }
        }
        if dp[i] > res {
            res = dp[i]
        }
    }
    return res
}

func max(i,j int) int {
    if i>j {
        return i
    } else {
        return j
    }
}



```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
