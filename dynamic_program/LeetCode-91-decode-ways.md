# LeetCode-91-decode-ways

>题目链接

[LeetCode-91-decode-ways](https://leetcode-cn.com/problems/decode-ways/)

>思路

1、第i个数字可以分为两种情况，一种是可以和第i-1个数进行组合，一种是只能独立编码；只能独立编码的情况下，解码方法数并没有变化，所以只要考虑第一种情况

2、用pre和cur分别表示上上个以及上个数字结尾时的最大解码数。

3、第i个数要能够和第i-1个数组合，则第i-1个数只能为1和2，并且为2时，第i个数需要小于7。这种情况下，最大解码数等于cur+pre（第i个数单独编码时，解码次数和上一次一样为cur；第i个数和i-1组合编码时，可以看作为一个整体，解码次数和上上次一样为pre）

4、还存在一种特殊情况就是第i个数是0时，只能够和第i-1个数组合，解码次数为pre。如果第i-1为0时，00不存在解码方法，直接返回0

>代码

```go

func numDecodings(s string) int {
    cur, pre := 1, 1
    if s[0:1] == "0" {
        return 0
    }

    for i := 1; i < len(s); i++ {
        temp := cur
        if s[i:i+1] == "0" {
            if s[i-1:i] == "1" || s[i-1:i] == "2" {
                cur = pre
            } else {
                return 0
            }
        } else if s[i-1:i] == "1" {
            cur += pre
        } else if s[i-1:i] == "2" {
            if s[i:i+1] < "7" {
                cur += pre
            }
        }
        pre = temp
    }
    return cur
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2MB, 在所有 Go 提交中击败了100.00%的用户
