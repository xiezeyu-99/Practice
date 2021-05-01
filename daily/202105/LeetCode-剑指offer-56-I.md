# LeetCode-剑指offer-56-I

>题目链接

[LeetCode-剑指offer-56-I](https://leetcode-cn.com/problems/shu-zu-zhong-shu-zi-chu-xian-de-ci-shu-lcof/)

> 思路

异或，找出不同的两个数的异或结果dif，然后通过补码原理，找到dif右边的第一个1，通过这个mask判断元素该位是0还是1，把数组分为两组，，再分别异或

>代码

```go

func singleNumbers(nums []int) []int {
    dif := 0
    for _, v := range nums {
        dif = v ^ dif
    }
    mask := dif & (-dif)
    res := []int{0, 0}
    for _, v := range nums {
        if v&mask == 0 {
            res[0] = v ^ res[0]
        } else {
            res[1] = v ^ res[1]
        }
    }
    return res
}
```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了98.57%的用户

内存消耗 :6.3MB, 在所有 Go 提交中击败了45.08%的用户
