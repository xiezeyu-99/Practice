#  LeetCode-312-burst-balloons

>题目链接

[LeetCode-312-burst-balloons](https://leetcode-cn.com/problems/burst-balloons/)

>思路

动态规划

>代码

```go

func maxCoins(nums []int) int {
    /* dp[i][j]: 区间（i， j）内的最大值
        1   3   1   5   8   1
    1   0   -   -   -   -   
    3       0   -   -   -   
    1           0   -   -   
    5               0   40   
    8                   0   
    1                       0
    */
    nums = append([]int{1}, nums...)
    nums = append(nums, 1)
    length := len(nums)
    dp := make([][]int, length)
    for i:=0;i<length;i++ {
        dp[i] = make([]int,  length)
    }

    for i:=length-3;i>=0;i-- {
        for j:=i+2;j<=length-1;j++ {
            for k:=i+1;k<j;k++ {
                tmp := dp[i][k] + nums[i]*nums[k]*nums[j] + dp[k][j]
                if tmp > dp[i][j] {
                    // fmt.Println(nums[i], nums[j], tmp)
                    dp[i][j] = tmp
                }
            }
        }
    }

    return dp[0][length-1]
}

```

>复杂度分析

时间复杂度：O(n^3)

空间复杂度：O(n^2)

>总结

执行用时 :88ms, 在所有 Go 提交中击败了28.57%的用户
 
内存消耗 :5.1MB, 在所有 Go 提交中击败了13.53%的用户
