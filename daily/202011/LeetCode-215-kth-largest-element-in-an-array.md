#  LeetCode-215-kth-largest-element-in-an-array

>题目链接

[LeetCode-215-kth-largest-element-in-an-array](https://leetcode-cn.com/problems/kth-largest-element-in-an-array/)

>思路

桶排序，桶的数量等于最大值和最小值之间的整数的个数，可知每个元素的桶索引应该是元素值减去最小值，记录每个桶的元素数量，倒序遍历桶，计算第k个落在哪个桶，再通过索引算出

元素值

>代码

```go

func findKthLargest(nums []int, k int) int {
    min, max := math.MaxInt32, math.MinInt32
    for _, v := range nums {
        if v > max {
            max = v
        }
        if v < min {
            min = v
        }
    }
    if min==max{
        return min
    }
    bucket := make([]int, max-min+1)
    for _, v := range nums {
        bucket[v-min]++
    }

    for i := len(bucket) - 1; i >= 0; i-- {
        k -= bucket[i]
        if k <= 0 {
            return i+min
        }
    }
    return -1
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了99.32%的用户
 
内存消耗 :3.7MB, 在所有 Go 提交中击败了34.31%的用户
