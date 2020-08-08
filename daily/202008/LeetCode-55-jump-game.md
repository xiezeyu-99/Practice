# LeetCode-55-jump-game
>题目链接

[LeetCode-55-jump-game](https://leetcode-cn.com/problems/jump-game/)

>思路

维护一个最远可达位置max，然后遍历每一个点，先判断该点是否小于max，然后计算更新max

>代码

```go

func canJump(nums []int) bool {
    max := nums[0]

    for i := range nums {
        if i <= max {
            dis := i + nums[i]
            if dis > max {
                max = dis
            }
        }
    }

    return max >= len(nums)-1
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了94.72%的用户

内存消耗 :4.2MB, 在所有 Go 提交中击败了100.00%的用户
