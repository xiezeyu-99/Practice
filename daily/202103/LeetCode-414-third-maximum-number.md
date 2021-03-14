#  LeetCode-414-third-maximum-number

>题目链接

[LeetCode-414-third-maximum-number](https://leetcode-cn.com/problems/third-maximum-number/)

>思路

记录前三个最大的值，逐一比较

>代码

```go

func thirdMax(nums []int) int {
    firstN := math.MinInt64
    secondN := math.MinInt64
    thirdN := math.MinInt64

    for _, n := range nums {
        if n == firstN || n == secondN || n == thirdN {
            continue
        } else if n > firstN {
            firstN, secondN, thirdN = n, firstN, secondN
        } else if n > secondN {
            secondN, thirdN = n, secondN
        } else if n > thirdN {
            thirdN = n
        }
    }
    if thirdN != math.MinInt64 {
        return thirdN
    } else {
        return firstN
    }
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了93.06%的用户

内存消耗 :2.9MB, 在所有 Go 提交中击败了63.19%的用户
