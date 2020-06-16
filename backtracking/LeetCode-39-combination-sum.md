# LeetCode-39-combination-sum

>题目链接

[LeetCode-39-combination-sum](https://leetcode-cn.com/problems/combination-sum/)

>思路

回溯，注意切片引用问题

>代码

```go

var result [][]int
func combinationSum(candidates []int, target int) [][]int {
    result=[][]int{}
    chose(candidates,[]int{},target)
    return result
}

func chose(candidates,targetSlice []int, target int){
    for i,v:=range candidates{
        if candidates[i] < target {
            targetSlice = append(targetSlice,candidates[i])
            chose(candidates[i:],targetSlice,target-v)
            targetSlice = targetSlice[:len(targetSlice)-1]
        } else if candidates[i] == target  {
            result = append(result, append([]int{candidates[i]},targetSlice...))
        }
    }
}
```

>复杂度分析

时间复杂度：O(n^n)

空间复杂度：O(n)

>总结

执行用时 :4ms, 在所有 Go 提交中击败了80.00%的用户

内存消耗 :2.8MB, 在所有 Go 提交中击败了100.00%的用户
