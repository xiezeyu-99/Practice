# LeetCode-350-intersection-of-two-arrays-ii

>题目链接

[LeetCode-350-intersection-of-two-arrays-ii](https://leetcode-cn.com/problems/intersection-of-two-arrays-ii/)

>思路

哈希表

>代码

```go

func intersect(nums1 []int, nums2 []int) []int {
    s := make(map[int]int)
    for i := 0; i < len(nums1); i++ {
        s[nums1[i]]++
    }

    res := []int{}

    for i := 0; i < len(nums2); i++ {
        if s[nums2[i]] > 0 {
            res = append(res, nums2[i])
            s[nums2[i]]--
        }
    }
    return res
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了89.67%的用户
 
内存消耗 :3.1MB, 在所有 Go 提交中击败了46.16%的用户
