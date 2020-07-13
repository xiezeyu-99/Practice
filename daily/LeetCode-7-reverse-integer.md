# LeetCode-7-reverse-integer

>题目链接

[LeetCode-7-reverse-integer](https://leetcode-cn.com/problems/reverse-integer/)

>思路

从个位开始算出每一位是数字，然后叠加，每次叠加时把之前的结果乘以10

>代码

```go

func reverse(x int) int {
    var nums int
    for x!=0{
        nums = nums*10 + x%10
        x = x/10
    }
    if nums > math.MaxInt32 || nums < math.MinInt32 {
        return 0
    }
    return nums
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了42.86%的用户
