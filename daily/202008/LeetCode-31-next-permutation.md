# LeetCode-31-next-permutation
>题目链接

[LeetCode-31-next-permutation](https://leetcode-cn.com/problems/next-permutation/)

>思路

我们希望下一个数比当前数大，这样才满足“下一个排列”的定义。因此只需要将后面的「大数」与前面的「小数」交换，就能得到一个更大的数。比如 123456，将 5 和 6 交换就能得到一个

更大的数 123465。

我们还希望下一个数增加的幅度尽可能的小，这样才满足“下一个排列与当前排列紧邻“的要求。为了满足这个要求，我们需要：

在尽可能靠右的低位进行交换，需要从后向前查找

将一个 尽可能小的「大数」 与前面的「小数」交换。比如 123465，下一个排列应该把 5 和 4 交换而不是把 6 和 4 交换

将「大数」换到前面后，需要将「大数」后面的所有数重置为升序，升序排列就是最小的排列。以 123465 为例：首先按照上一步，交换 5 和 4，得到 123564；然后需要将 5 之后的数重置

为升序，得到 123546。显然 123546 比 123564 更小，123546 就是 123465 的下一个排列


>代码

```go

func nextPermutation(nums []int) {
    if len(nums) <= 1 {
        return
    }

    i, j, k := len(nums)-2, len(nums)-1, len(nums)-1

    // find: A[i]<A[j]
    for i >= 0 && nums[i] >= nums[j] {
        i--
        j--
    }

    if i >= 0 { // 不是最后一个排列
        // find: A[i]<A[k]
        for nums[i] >= nums[k] {
            k--
        }
        // swap A[i], A[k]
        nums[i], nums[k] = nums[k], nums[i]
    }

    // reverse A[j:end]
    for i, j := j, len(nums)-1; i < j; i, j = i+1, j-1 {
        nums[i], nums[j] = nums[j], nums[i]
    }
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.5MB, 在所有 Go 提交中击败了78.26%的用户
