# LeetCode-47-permutations-ii

>题目链接

[LeetCode-47-permutations-ii](https://leetcode-cn.com/problems/permutations-ii/)

>思路

回溯，标记去重

>代码

```go

var result [][]int
func permuteUnique(nums []int) [][]int {
    result = [][]int{}
    backTrack(nums,0)
    return result
}

func backTrack(nums []int,n int){
    if n==len(nums){
        newNums:=make([]int,len(nums))
        copy(newNums,nums)
        result = append(result,newNums)
        return
    }
    status:=make(map[int]bool)
    for i:=n;i<len(nums);i++{
        if status[nums[i]] {
            continue
        }
        status[nums[i]]=true
        nums[i],nums[n] = nums[n],nums[i]
        backTrack(nums, n+1)
        nums[i],nums[n] = nums[n],nums[i]

    }
}
```

>复杂度分析

时间复杂度：O(n！)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :3.5MB, 在所有 Go 提交中击败了100.00%的用户
