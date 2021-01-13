#  LeetCode-321-create-maximum-number

>题目链接

[LeetCode-321-create-maximum-number](https://leetcode-cn.com/problems/create-maximum-number/)

>思路

单调栈

>代码

```go

func maxSubsequence(a []int, k int) (s []int) {
    for i, v := range a {
        for len(s) > 0 && len(s)+len(a)-1-i >= k && v > s[len(s)-1] {
            s = s[:len(s)-1]
        }
        if len(s) < k {
            s = append(s, v)
        }
    }
    return
}

func lexicographicalLess(a, b []int) bool {
    for i := 0; i < len(a) && i < len(b); i++ {
        if a[i] != b[i] {
            return a[i] < b[i]
        }
    }
    return len(a) < len(b)
}

func merge(a, b []int) []int {
    merged := make([]int, len(a)+len(b))
    for i := range merged {
        if lexicographicalLess(a, b) {
            merged[i], b = b[0], b[1:]
        } else {
            merged[i], a = a[0], a[1:]
        }
    }
    return merged
}

func maxNumber(nums1, nums2 []int, k int) (res []int) {
    start := 0
    if k > len(nums2) {
        start = k - len(nums2)
    }
    for i := start; i <= k && i <= len(nums1); i++ {
        s1 := maxSubsequence(nums1, i)
        s2 := maxSubsequence(nums2, k-i)
        merged := merge(s1, s2)
        if lexicographicalLess(res, merged) {
            res = merged
        }
    }
    return
}




```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(n)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了71.15%的用户
 
内存消耗 :6.9MB, 在所有 Go 提交中击败了26.64%的用户
