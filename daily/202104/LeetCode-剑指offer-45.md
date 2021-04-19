# LeetCode-剑指offer-45

>题目链接

[LeetCode-剑指offer-45](https://leetcode-cn.com/problems/ba-shu-zu-pai-cheng-zui-xiao-de-shu-lcof/)

> 思路

自定义排序

>代码

```go

func minNumber(nums []int) string {
    sort.Slice(nums, func(i, j int) bool {
        return compareNumber(nums[i], nums[j])
    })
    res := ""
    for _, v := range nums {
        res += strconv.Itoa(v)
    }
    return res
}

func compareNumber(i, j int) bool {
    str1 := fmt.Sprintf("%d%d", i, j)
    str2 := fmt.Sprintf("%d%d", j, i)
    return str1 < str2
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了28.11%的用户

内存消耗 :2.7MB, 在所有 Go 提交中击败了59.67%的用户
