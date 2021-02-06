#  LeetCode-367-valid-perfect-square

>题目链接

[LeetCode-367-valid-perfect-square](https://leetcode-cn.com/problems/valid-perfect-square/)

>思路

二分法

>代码

```go

func isPerfectSquare(num int) bool {
    if num < 2 {
        return true
    }

    left, right := 2, num/2

    for left <= right {
        mid := (right-left)/2 + left
        r := mid * mid
        if r == num {
            return true
        } else if r < num {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return false
}

```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户
 
内存消耗 :1.9MB, 在所有 Go 提交中击败了99.57%的用户
