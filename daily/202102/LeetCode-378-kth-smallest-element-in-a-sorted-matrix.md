#  LeetCode-378-kth-smallest-element-in-a-sorted-matrix

>题目链接

[LeetCode-378-kth-smallest-element-in-a-sorted-matrix](https://leetcode-cn.com/problems/kth-smallest-element-in-a-sorted-matrix/)

>思路

二分法

>代码


```go

func kthSmallest(matrix [][]int, k int) int {
    n := len(matrix)
    left, right := matrix[0][0], matrix[n-1][n-1]
    for left <= right {
        mid := left + (right - left) / 2
        if check(matrix, mid, k, n) {
            right = mid-1
        } else {
            left = mid + 1
        }
    }
    return left
}

func check(matrix [][]int, mid, k, n int) bool {
    i, j := n - 1, 0
    num := 0
    for i >= 0 && j < n {
        if matrix[i][j] <= mid {
            num += i + 1
            j++
        } else {
            i--
        }
    }
    return num >= k
}



```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :28ms, 在所有 Go 提交中击败了81.64%的用户
 
内存消耗 :2MB, 在所有 Go 提交中击败了60.29%的用户
