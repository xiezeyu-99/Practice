# LeetCode-4-median-of-two-sorted-arrays

>题目链接

[LeetCode-4-median-of-two-sorted-arrays](https://leetcode-cn.com/problems/median-of-two-sorted-arrays/)

>思路

两个数组一起遍历，假设中位数下标是m，则找到第m小的元素就是结果。注意长度奇偶数的处理

>代码

```go

func findMedianSortedArrays(nums1 []int, nums2 []int) float64 {

    l1, l2 := len(nums1), len(nums2)
    length := l1 + l2
    a := length / 2
    nums3 := make([]int, a+1)

    i, j, m := 0, 0, 0
    for i < l1 && j < l2 {
        if m == a+1 {
            break
        }
        if nums1[i] > nums2[j] {
            nums3[m] = nums2[j]
            m++
            j++
        } else {
            nums3[m] = nums1[i]
            m++
            i++
        }

    }

    for ; m < a+1 && j < l2; j++ {
        nums3[m] = nums2[j]
        m++
    }
    for ; m < a+1 && i < l1; i++ {
        nums3[m] = nums1[i]
        m++
    }

    if length%2 == 0 {
        x := float64(nums3[a-1]+nums3[a]) / 2.0
        return x
    }
    x := float64(nums3[a])
    return x

}

```

>复杂度分析

时间复杂度：O((n+m)/2)

空间复杂度：O((n+m)/2)

>总结

执行用时 :12ms, 在所有 Go 提交中击败了94.22%的用户

内存消耗 :6MB, 在所有 Go 提交中击败了63.64%的用户
