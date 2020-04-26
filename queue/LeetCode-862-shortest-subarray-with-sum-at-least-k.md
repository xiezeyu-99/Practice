# LeetCode-862-shortest-subarray-with-sum-at-least-k

>题目链接

[LeetCode-862-shortest-subarray-with-sum-at-least-k](https://leetcode-cn.com/problems/shortest-subarray-with-sum-at-least-k/)

>思路

1.计算前缀和，保持在sum切片中，当i > j时，子数组和等于sum[i]-sum[j]

2.维护一个双端队列，遍历前缀和，把下标i入列

3、 i 递增，可能有 j>i 使得 sums[j] - sums[queue[0]] >= K，但是由于 j>i,所以queue[0]---i是以queue[0]作为头的最短的符合条件的子串，把 deque[0] 删除

4、 如果存在 j>i>deque[r] 使得 sums[j] - sums[deque[r]] >= K， 如果 sums[deque[r]] >= sums[i] 则，sums[j] - sums[i] >= K 一定成立，并且 j-i < j-deque[r]，所以，以deque[r]作为头,不可能是最短的符合条件子串,删除

>代码

```go

func shortestSubarray(A []int, K int) int {
    size := len(A)
    sums := make([]int, size+1)
    for i, n := range A {
        if n >= K {
            return 1
        }
        sums[i+1] = sums[i] + n
    }

    res := size + 1
    //存储0----i,有可能是符合条件的最短子串的head
    deque := make([]int, 0, 0)
    for i := 0; i < size+1; i++ {
        for len(deque) > 0 && (sums[i]-sums[deque[0]] >= K) {
            res = min(res, i-deque[0])
            deque = deque[1:]
        }
        for len(deque) > 0 && (sums[i] <= sums[deque[len(deque)-1]]) {
            deque = deque[:len(deque)-1]
        }
        deque = append(deque, i)
    }

    if res == size+1 {
        return -1
    }

    return res
}

```

>复杂度分析

时间复杂度：计算前缀和用时O(n)，计算子数组和，每个下标最多出队一次，进队一次，均摊时间复杂度为O(n)，总的时间复杂度为O(n)

空间复杂度：O(n)

>总结

执行用时 :112 ms, 在所有 Go 提交中击败了 93.88%的用户

内存消耗 :7.7 MB, 在所有 Go 提交中击败了100.00%的用户
