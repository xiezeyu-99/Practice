# LeetCode-60-permutation-sequence
>题目链接

[LeetCode-60-permutation-sequence](https://leetcode-cn.com/problems/permutation-sequence/)

>思路

1、假设有n个数字，最高位固定后，每个相同最高位各有（n-1)!个组合，并且是升序的，因此可以利用k对（n-1)!求商，得出最高位的数字

2、确定最高位后，数字变成n-1，就又回到了第一点的问题，只不过此时的k应该是k对（n-1)!求余后的值

>代码

```go

func getPermutation(n int, k int) string {
    factorial := []int{1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880}
    scope := []string{"1", "2", "3", "4", "5", "6", "7", "8", "9"}
    ret := ""
    k--
    for n > 0 {
        i := k / factorial[n-1]
        k %= factorial[n-1]
        ret = ret + scope[i]
        scope = append(scope[:i], scope[i+1:]...)
        n--
    }
    return ret
}

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2MB, 在所有 Go 提交中击败了100.00%的用户
