# LeetCode-89-gray-code
>题目链接

[LeetCode-89-gray-code](https://leetcode-cn.com/problems/gray-code/)

>思路

f(n) = f(n-1) U R(n), 其中R(n)可由f(n-1)的倒序后的每一位前面加上1得到。

>代码

```go

func grayCode(n int) []int {
    ret, head := []int{0}, 1
    for i := 0; i < n; i++ {
        for j := len(ret)-1; j >= 0 ; j-- { // 倒序遍历： 下一个跟上一个只有一个位数有差异
            ret = append(ret, head + ret[j])
        }
        head <<= 1 // 第i+1位置1
    }
    return ret
}
```

>复杂度分析

时间复杂度：O(2^n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.1MB, 在所有 Go 提交中击败了89.36%的用户
