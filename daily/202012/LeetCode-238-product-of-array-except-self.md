#  LeetCode-238-product-of-array-except-self

>题目链接

[LeetCode-238-product-of-array-except-self](https://leetcode-cn.com/problems/product-of-array-except-self/)

>思路

先正向遍历计算前缀乘积，然后反向遍历，计算后缀乘积，然后前缀后缀相乘

>代码

```go

func productExceptSelf(nums []int) []int {
    s1, s2 := make([]int, len(nums)), make([]int, len(nums))
    p1, p2 := 1, 1
    for i := 0; i < len(nums); i++ {
        p1 *= nums[i]
        s1[i] = p1
    }
    res := make([]int, len(nums))
    for i := len(nums) - 1; i >= 0; i-- {
        p2 *= nums[i]
        s2[i] = p2
        var p int
        if i == 0 {
            p = s2[i+1]
        } else if i == len(nums)-1 {
            p = s1[i-1]
        } else {
            p = s1[i-1] * s2[i+1]
        }
        res[i] = p
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :28ms, 在所有 Go 提交中击败了66.58%的用户
 
内存消耗 :7.7MB, 在所有 Go 提交中击败了17.09%的用户
