# LeetCode-剑指offer-44

>题目链接

[LeetCode-剑指offer-44](https://leetcode-cn.com/problems/shu-zi-xu-lie-zhong-mou-yi-wei-de-shu-zi-lcof/)

> 思路


>代码

```go

func findNthDigit(n int) int {
    var digst=1
    var count=9
    var start=1
    for n-count>0{
        n-=count
        digst+=1
        start*=10
        count=digst*start*9
    }
    var num=start+(n-1)/digst
    var res=strconv.Itoa(num)[(n-1)%digst] - '0'
    return int(res)
}

```

>复杂度分析

时间复杂度：O(n)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :1.9MB, 在所有 Go 提交中击败了50.66%的用户
