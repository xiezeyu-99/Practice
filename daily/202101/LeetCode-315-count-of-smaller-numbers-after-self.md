#  LeetCode-315-count-of-smaller-numbers-after-self

>题目链接

[LeetCode-315-count-of-smaller-numbers-after-self](https://leetcode-cn.com/problems/count-of-smaller-numbers-after-self/)

>思路

直接遍历

>代码

```go

func countSmaller(nums []int) []int {
    res:=[]int{}
    for i := 0; i < len(nums); i++ {
        count:=0
        for j := i+1; j < len(nums); j++ {
            if nums[j] < nums[i] {
                count++
            }
        }
        res=append(res, count)
    }
    return res
}


```

>复杂度分析

时间复杂度：O(n^2)

空间复杂度：O(1)

>总结

执行用时 :164ms, 在所有 Go 提交中击败了22.11%的用户
 
内存消耗 :5.1MB, 在所有 Go 提交中击败了40.00%的用户
