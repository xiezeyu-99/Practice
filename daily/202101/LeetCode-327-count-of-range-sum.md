#  LeetCode-327-count-of-range-sum

>题目链接

[LeetCode-327-count-of-range-sum](https://leetcode-cn.com/problems/count-of-range-sum/)

>思路

归并排序

>代码

```go

func countRangeSum(nums []int, lower, upper int) int {
    var mergeCount func([]int) int
    mergeCount = func(arr []int) int {
        n := len(arr)
        if n <= 1 {
            return 0
        }

        n1 := append([]int(nil), arr[:n/2]...)
        n2 := append([]int(nil), arr[n/2:]...)
        cnt := mergeCount(n1) + mergeCount(n2) // 递归完毕后，n1 和 n2 均为有序

        // 统计下标对的数量
        l, r := 0, 0
        for _, v := range n1 {
            for l < len(n2) && n2[l]-v < lower {
                l++
            }
            for r < len(n2) && n2[r]-v <= upper {
                r++
            }
            cnt += r - l
        }

        // n1 和 n2 归并填入 arr
        p1, p2 := 0, 0
        for i := range arr {
            if p1 < len(n1) && (p2 == len(n2) || n1[p1] <= n2[p2]) {
                arr[i] = n1[p1]
                p1++
            } else {
                arr[i] = n2[p2]
                p2++
            }
        }
        return cnt
    }

    prefixSum := make([]int, len(nums)+1)
    for i, v := range nums {
        prefixSum[i+1] = prefixSum[i] + v
    }
    return mergeCount(prefixSum)
}

```

>复杂度分析

时间复杂度：O(nlogn)

空间复杂度：O(n)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了65.05%的用户
 
内存消耗 :6.6MB, 在所有 Go 提交中击败了15.22%的用户
