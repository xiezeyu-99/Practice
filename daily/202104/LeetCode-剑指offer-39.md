# LeetCode-剑指offer-39

>题目链接

[LeetCode-剑指offer-39](https://leetcode-cn.com/problems/shu-zu-zhong-chu-xian-ci-shu-chao-guo-yi-ban-de-shu-zi-lcof/)

> 思路

投票

>代码

```go

func majorityElement(nums []int) int {
    vote := 0
    x := nums[0]
    for _, num := range nums {
        // 票数抵消
        if vote == 0  {
            // 假设当前数为众数
            x = num
        }
        if num == x {
            // 投正票
            vote += 1
        } else {
            // 投反票
            vote -= 1
        }
    }
    return x
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :44ms, 在所有 Go 提交中击败了90.03的用户

内存消耗 :7.7MB, 在所有 Go 提交中击败了53.76%的用户
