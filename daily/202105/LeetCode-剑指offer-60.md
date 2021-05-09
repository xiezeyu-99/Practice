# LeetCode-剑指offer-60

>题目链接

[LeetCode-剑指offer-60](https://leetcode-cn.com/problems/nge-tou-zi-de-dian-shu-lcof/)

> 思路

动态规划

>代码

```go


func dicesProbability(n int) []float64 {
    dp:=make([][]int,n+1)
    for i:=0;i<=n;i++{
        dp[i]=make([]int,6*n+1)
    }
    for i:=1;i<=6;i++{
        dp[1][i]=1
    }

    for i:=1;i<=n;i++{
        dp[i][i]=1
    }

    for i:=2;i<=n;i++{
        for j:=i+1;j<=6*i;j++{
            for k:=1;k<=6;k++{
                if j-k>=i-1{
                    dp[i][j]+=dp[i-1][j-k]
                }
            }
        }
    }

    result:=make([]float64,6*n)
    for i:=n;i<=6*n;i++{
        result[i-1]=float64(dp[n][i])/ math.Pow(6,float64(n))
    }
    return result[n-1:]
}

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :96ms, 在所有 Go 提交中击败了96.13%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了61.42%的用户
