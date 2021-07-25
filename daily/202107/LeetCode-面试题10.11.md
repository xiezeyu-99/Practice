# LeetCode-面试题10.11

>题目链接

[LeetCode-面试题10.10](https://leetcode-cn.com/problems/rank-from-stream-lcci/)

> 思路

假定奇数位是峰，偶数位是谷，则遍历，不符合的就交换前后位置

>代码

```go

func wiggleSort(nums []int) {
    for i := 0; i < len(nums)-1; i++ {
        if (i%2 == 1 && nums[i] < nums[i+1]) || (i%2 == 0 && nums[i] > nums[i+1]) {
            nums[i], nums[i+1] = nums[i+1], nums[i]
        }
    }
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.89%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了100.00%的用户
