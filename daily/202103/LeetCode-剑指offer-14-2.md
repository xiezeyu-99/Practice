# LeetCode-剑指offer-14-2

>题目链接

[LeetCode-剑指offer-14-2](https://leetcode-cn.com/problems/jian-sheng-zi-ii-lcof/)

> 思路

1. 等分乘积最大
2. 分成每段长度为3，乘积最大
3. 如果余2，则保留2，如果余1，则把3+1替换成2+2
4. 涉及大数，所以每次要取模

>代码

```go

func cuttingRope(n int) int {
    if n == 2 {
        return 1
    }
    if n == 3 {
        return 2
    }

    another := n % 3
    var result int
    switch another {
    case 2:
        result = qq(3, n/3) * 2 % 1000000007
    case 1:
        result = qq(3, n/3-1) * 2 % 1000000007 * 2 % 1000000007
    default:
        result = qq(3, n/3)
    }
    return result
}
func qq(x, n int) int {
    r := 1
    for i := 0; i < n; i++ {
        r = r * x % 1000000007
    }
    return r
}


```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了17.82%的用户
