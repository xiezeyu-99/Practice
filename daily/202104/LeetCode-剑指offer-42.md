# LeetCode-剑指offer-42

>题目链接

[LeetCode-剑指offer-42](https://leetcode-cn.com/problems/lian-xu-zi-shu-zu-de-zui-da-he-lcof/)

> 思路

和不断叠加，当和小于0时，会对后面的计算无帮助，就置0

>代码

```go

func maxSubArray(nums []int) int {
    var sum, max int = 0, -100

    for _, v := range nums {
        sum += v

        if sum > max{
            max = sum
        }

        if sum < 0 {
            sum = 0
        }
    }

    return max
}



```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :24ms, 在所有 Go 提交中击败了89.25的用户

内存消耗 :7.1MB, 在所有 Go 提交中击败了61.49%的用户
