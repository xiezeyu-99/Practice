# LeetCode-169-majority-element

>题目链接

[LeetCode-169-majority-element](https://leetcode-cn.com/problems/majority-element/)

>思路

摩尔投票法（Boyer–Moore majority vote algorithm），也被称作「多数投票法」，算法解决的问题是：如何在任意多的候选人中（选票无序），选出获得票数最多的那个。

算法可以分为两个阶段：

对抗阶段：分属两个候选人的票数进行两两对抗抵消

计数阶段：计算对抗结果中最后留下的候选人票数是否有效

>代码

```go

func majorityElement(nums []int) int {
    count := 0
    major := 0
    for _, value := range nums {
        if count == 0 {
            major = value
            count++
        } else if major == value {
            count++
        } else {
            count--
        }
    }
    return major
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :20ms, 在所有 Go 提交中击败了94.45%的用户

内存消耗 :5.9MB, 在所有 Go 提交中击败了100.00%的用户
