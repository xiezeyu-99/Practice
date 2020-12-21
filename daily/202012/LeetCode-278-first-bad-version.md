#  LeetCode-278-first-bad-version

>题目链接

[LeetCode-278-first-bad-version](https://leetcode-cn.com/problems/first-bad-version/)

>思路

二分法

>代码

```go

func firstBadVersion(n int) int {

    left, right := 1, n
    var mid int
    for left <= right {
        mid = (right-left)/2 + left
        if !isBadVersion(mid) {
            if mid+1 <= n && isBadVersion(mid+1) {
                return mid + 1
            }
            left = mid + 1
        } else {
            if mid-1 >= 1 && !isBadVersion(mid-1) {
                return mid
            }
            right = mid - 1
        }
    }
    return mid
}

```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了98.62%的用户
