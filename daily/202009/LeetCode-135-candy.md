# LeetCode-135-candy
>题目链接

[LeetCode-135-candy](https://leetcode-cn.com/problems/candy/)

>思路

用一个数组保存每个孩子的糖果数量，初始值为1，然后从左右两边分别遍历，使每个孩子与左右的孩子之间的糖果数都满足要求

>代码

```go

// 左右两个方向更新一次即可
func candy(ratings []int) int {
    can := make([]int, len(ratings))
    for i := 0; i < len(ratings); i++ {
        can[i] = 1
        if i == 0 {
            continue
        }
        if ratings[i] > ratings[i-1] && can[i] <= can[i-1] {
            can[i] = can[i-1] + 1
        }
    }
    for i := len(ratings) -2; i >=0; i-- {

        if ratings[i] > ratings[i+1] && can[i] <= can[i+1] {
            can[i] = can[i+1] + 1
        }

    }
    sum := 0
    for i := 0; i < len(can); i++ {
        sum += can[i]
    }
    return sum
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :20ms, 在所有 Go 提交中击败了91.18%的用户
 
内存消耗 :6.2MB, 在所有 Go 提交中击败了50.78%的用户
