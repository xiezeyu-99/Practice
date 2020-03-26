#LeetCode-1-two-sum

> 题目链接

[LeetCode-1-two-sum](https://leetcode-cn.com/problems/two-sum/?utm_source=LCUS&utm_medium=ip_redirect_q_uns&utm_campaign=transfer2china)

> 思路

待定

> 代码

```go
func twoSum(nums []int, target int) []int {
    tempMap := make(map[int]int)

    for i,num :=range nums{
        if _,ok:=tempMap[target-num];ok{
            return []int{i,tempMap[target-num]}
        }
        tempMap[num]=i
    }
    return []int{}
}
```

> 复杂度分析

待定

> 总结

执行用时 : 4 ms, 在所有 Go 提交中击败了96.75%的用户
内存消耗 :3.8 MB, 在所有 Go 提交中击败了40.87%的用户


