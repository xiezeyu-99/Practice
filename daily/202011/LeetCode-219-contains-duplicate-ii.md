#  LeetCode-219-contains-duplicate-ii

>题目链接

[LeetCode-219-contains-duplicate-ii](https://leetcode-cn.com/problems/contains-duplicate-ii/)

>思路

用map计数

>代码

```go

func containsNearbyDuplicate(nums []int, k int) bool {
    status := make(map[int]int)
    for i, v := range nums {
        if index, ok := status[v]; ok && i-index <= k {
            return true
        } else {
            status[v] = i
        }
    }
    return false
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(n)

>总结

执行用时 :16ms, 在所有 Go 提交中击败了88.25%的用户
 
内存消耗 :9.3MB, 在所有 Go 提交中击败了38.11%的用户
