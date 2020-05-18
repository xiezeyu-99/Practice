# LeetCode-136-single-number

>题目链接

[LeetCode-136-single-number](https://leetcode-cn.com/problems/single-number/)

>思路

利用异或运算的特性，一个数与它本身异或等于0，一个数与0异或等于这个数本身，以及异或的交换律，把数组所有数进行异或，最后得到的结果就是那个只出现过一次的值

>代码

```go

func singleNumber(nums []int) int {
    sum:=0
    for _,v:=range nums{
        sum^=v
    }
    return sum
}

```

>复杂度分析

时间复杂度：O(n),

空间复杂度：O(1)

>总结

执行用时 :8ms, 在所有 Go 提交中击败了98.08%的用户

内存消耗 :4.7MB, 在所有 Go 提交中击败了100.00%的用户
