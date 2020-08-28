# LeetCode-90-subsets-ii
>题目链接

[LeetCode-90-subsets-ii](https://leetcode-cn.com/problems/subsets-ii/)

>思路

先排序，然后不断递归，用回溯考察每个元素选择与不选择两种情况。注意跳过重复元素

>代码

```go

var ans [][]int

func subsetsWithDup(nums []int) [][]int {
    ans = [][]int{}
    sort.Ints(nums)
    dfs(nums, []int{}, 0)
    return ans
}

func dfs(nums, temp []int, index int) {

    res := make([]int, len(temp))
    copy(res, temp)
    ans = append(ans, res)

    for i := index; i < len(nums); i++ {
        if i > index && nums[i] == nums[i-1] {
            continue
        }
        temp = append(temp, nums[i])
        dfs(nums, temp, i+1)
        temp = temp[:len(temp)-1]
    }
}
```

>复杂度分析

时间复杂度：O(2^n)

空间复杂度：O(n)

>总结

执行用时 :0ms, 在所有 Go 提交中击败了100.00%的用户

内存消耗 :2.4MB, 在所有 Go 提交中击败了88.04%的用户
