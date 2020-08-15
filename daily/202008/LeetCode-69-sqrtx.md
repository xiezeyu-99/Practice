# LeetCode-69-sqrtx
>题目链接

[LeetCode-69-sqrtx](https://leetcode-cn.com/problems/sqrtx/)

>思路

二分法

>代码

```go

func mySqrt(x int) int {
    left, right := 1, x

    for left <= right {
        mid := (right-left)/2 + left
        res := mid * mid
        if res == x {
            return mid
        } else if res < x {
            if (mid+1)*(mid+1) > x {
                return mid
            } else {
                left = mid + 1
            }
        } else {
            if (mid-1)*(mid-1) < x {
                return mid - 1
            } else {
                right = mid - 1
            }
        }
    }
    return 0
}

```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.2MB, 在所有 Go 提交中击败了11.59%的用户
