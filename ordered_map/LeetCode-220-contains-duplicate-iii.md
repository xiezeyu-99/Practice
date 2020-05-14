# LeetCode-220-contains-duplicate-iii

> 题目链接

[LeetCode-220-contains-duplicate-iii](https://leetcode-cn.com/problems/contains-duplicate-iii/)

> 思路

对于数组中的某一个元素x，只有x-t到x+t范围内的数满足条件，因此把数据按(0，t),(t+1，2t+1).....用桶划分，这样非相邻桶内的数相差肯定大于t。

遍历数组，计算出当前元素所在的桶序号，如果桶已存在或者相邻的桶中的数据满足条件，则返回true

因为规定索引之差最大为k，因此要把当前索引减去k后的元素所生成的桶删除掉

> 代码

```go

func containsNearbyAlmostDuplicate(nums []int, k int, t int) bool {
    if t < 0 || k <0 {
        return false
    }
    w := t + 1
    buckets := make(map[int]int)
    for i, _ := range nums {
        if i >k {
            delete(buckets, getId(nums[i-k-1],w))
        }
        id := getId(nums[i], w)
        if _, ok := buckets[id]; ok {
            return true
        }
        if val, ok := buckets[id-1]; ok && abs(nums[i], val) <= t {
            return true
        }
        if val, ok := buckets[id+1]; ok && abs(nums[i], val) <= t {
            return true
        }
        buckets[id] = nums[i]
    
    }
    return false
}

func abs(a, b int) int {
    if a >= b {
        return a - b
    } else {
        return b - a
    }
}

func getId(x, w int) int {
    if x >= 0 {
        return x / w
    } else {
        return (x+1)/w - 1
    }
}

```

> 复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

> 总结

执行用时 :8ms, 在所有 Go 提交中击败了90.34%的用户

内存消耗 :3.9MB, 在所有 Go 提交中击败了50.00%的用户

