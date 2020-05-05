# LeetCode-29-divide-two-integers

> 题目链接

[LeetCode-29-divide-two-integers](https://leetcode-cn.com/problems/divide-two-integers/)

> 思路

1.为方便计算处理，被除数和除数全部转换为绝对值，并且计算出最终结果的正负标识

2.先处理几种特殊情况

    1）被除数等于0，无论除数是多少，最后结果都是0

    2）被除数小于除数，最后结果也是0

    3）除数为1时，结果为被除数，这个时候的结果为最大值或者最小值，会发生溢出

2.剩下就是被除数大于除数的情况，这个时候结果最小为1，进行反向二分法，比较被除数和除数乘以2之后的大小

    1）如果被除数较大，则结果最小为2，除数继续乘以2来依次进行比较

    2）如果被除数较小，则结果处于除数当前倍数与上一轮倍数之间，用被除数减去除数乘以上一轮的倍数的积，然后倍数复位为1，继续进行比较

    3）题目要求不能用乘法，因此用左移一位来代替乘以2的操作

> 代码

```go

func divide(dividend int, divisor int) int {
    if dividend == 0 {
        return 0
    }
    absdividend,absdivisor:=int(math.Abs(float64(dividend))),int(math.Abs(float64(divisor)))
    if absdividend < absdivisor {
        return 0
    }

    prefix := 1
	if (dividend < 0 && divisor > 0) || (dividend > 0 && divisor < 0) {
		prefix = -1
	}

    if absdivisor==1{
        if absdividend*prefix > math.MaxInt32 {
            return math.MaxInt32
        } else if absdividend*prefix < math.MinInt32 {     
            return math.MinInt32
        }
    }

    result:=0
    for absdividend >= absdivisor{
        t,pre:=absdivisor,1
        for absdividend > t<<1{
            pre = pre<<1
            t = t<<1
        }
        result = result+pre
        absdividend = absdividend-t
    }
    return result*prefix
}

```

> 复杂度分析

时间复杂度：O(logn)

空间复杂度：O(1)

> 总结

执行用时 :0 ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.5 MB, 在所有 Go 提交中击败了100.00%的用户

