# LeetCode-剑指offer-61

>题目链接

[LeetCode-剑指offer-61](https://leetcode-cn.com/problems/bu-ke-pai-zhong-de-shun-zi-lcof/)

> 思路

两个条件 1、除0外，其他不能重复 2、除0外，最大值和最小值相差不能大于4，小于4的情况下证明其余的数字时0，可以替代

>代码

```go

func isStraight(nums []int) bool {
    count:=make(map[int]bool)
    min,max:=14,-1
    for _,v:=range nums {
        if v!=0 && count[v] {
            return false
        }
        count[v] = true
        if v!=0 && v < min {
            min = v
        }
        if v > max{
            max = v
        }
    }
    return max - min <=4
}

```

>复杂度分析

时间复杂度：O(1)

空间复杂度：O(1)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2MB, 在所有 Go 提交中击败了100.00%的用户
