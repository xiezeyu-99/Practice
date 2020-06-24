# LeetCode-78-subsets

>题目链接

[LeetCode-78-subsets](https://leetcode-cn.com/problems/subsets/)

>思路

考察每个数选择以及不选择两种情况，不断递归下去，直到考察到最后一个数字，然后回溯

>代码

```go

var result [][]int
func subsets(nums []int) [][]int {
    result = [][]int{}
    backTrace(nums,[]int{},0)
    return result
}

func backTrace(nums,temp []int,n int){
    if n==len(nums){
        newTemp  :=make([]int,len(temp))
        copy(newTemp,temp)
        result = append(result,newTemp)
        return
    }
    backTrace(nums,temp,n+1) 
    temp = append(temp,nums[n])
    backTrace(nums,temp,n+1)
}

```

>复杂度分析

时间复杂度：O(2^n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.3MB, 在所有 Go 提交中击败了100.00%的用户
