#  LeetCode-368-largest-divisible-subset

>题目链接

[LeetCode-368-largest-divisible-subset](https://leetcode-cn.com/problems/largest-divisible-subset/)

>思路

动态规划

>代码

```go

func largestDivisibleSubset(nums []int) []int {
    l := len(nums)
    if l == 0 {
        return []int{}
    }
    sort.Ints(nums)
    memo := make([][]int, l)
    memo[0] = []int{nums[0]}
    result := memo[0]
    for right := 1; right < l; right++ {
        memo[right] = append(memo[right], nums[right])
        for left := 0; left < right; left++ {
            // 存在整除子集中的最大元素的数字
            if nums[right] % nums[left] != 0 {
                continue
            }
            if len(memo[right]) > len(memo[left]) {
                continue
            }
            copy(memo[right], memo[left]) // 不能用=赋值！
            memo[right] = append(memo[right], nums[right])
        }
        if len(result) < len(memo[right]) {
            result = memo[right]
        }
    }
    return result
}

```

>复杂度分析

时间复杂度：O(logn)

空间复杂度：O(n)

>总结

执行用时 :52ms, 在所有 Go 提交中击败了59.32%的用户
 
内存消耗 :3.8MB, 在所有 Go 提交中击败了15.25%的用户
