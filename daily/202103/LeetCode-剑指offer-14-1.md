# LeetCode-剑指offer-14-1

>题目链接

[LeetCode-剑指offer-14-1](https://leetcode-cn.com/problems/jian-sheng-zi-lcof/)

> 思路

1. 等分乘积最大
2. 分成每段长度为3，乘积最大
3. 如果余2，则保留2，如果余1，则把3+1替换成2+2

>代码

```go

func cuttingRope(n int) int {

    if n <= 2 {
        return 1
    }
    if n == 3 {
        return 2
    }

    parts := n / 3
    another := n % 3
    var result float64
    switch another {
    case 2:
        result = math.Pow(3, float64(parts))
        result *= 2
    case 1:
        result = math.Pow(3, float64(parts-1))
        result *= 4
    default:
        result = math.Pow(3, float64(parts))
    }
    return int(result)
}

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了68.20%的用户
