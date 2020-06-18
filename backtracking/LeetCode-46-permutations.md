# LeetCode-46-permutations

>题目链接

[LeetCode-46-permutations](https://leetcode-cn.com/problems/permutations/)

>思路

见注释

>代码

```go

var result [][]int
func permute(nums []int) [][]int {
    result = [][]int{}
    backTrack(nums,[]int{},0,len(nums))
    return result
}

func backTrack(nums,temp []int,n,count int){

    if n==count{
        result = append(result,temp)
        return
    }


    for i:=0;i<len(nums);i++{
        cur:=temp
        cur=append(cur,nums[i])
        newNums := make([]int, len(nums))
        copy(newNums,nums)
        backTrack(append(newNums[:i],newNums[i+1:]...), cur,n+1,count)

    }
}

```

>复杂度分析

时间复杂度：O(n*n!)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.7MB, 在所有 Go 提交中击败了100.00%的用户
